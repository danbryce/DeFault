package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;
import java.math.*;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.LearningTypes;
import edu.usu.cs.ka.qa.currentsystem.simulator.*;
import edu.usu.cs.ka.qa.currentsystem.utilities.*;

public class QTree 
{
	Agent agent;
	Planner planner;
	List<ActionInstance> plan;
	QNode root;
	List<QNode> openList;
	IncompleteProblem problem;
	int numNodes;
	
	public QTree(Agent a, List<ActionInstance> p)
	{	
		openList = new LinkedList<QNode>();
		agent = a;
		plan = p;
		planner = Simulation_PL_QA.getInstance().getPlanner();		
		
		
	}

	QNode whichNodeToExpand(){return openList.remove(0);}		//some switch for an expansion strategy

	void buildTree()
	{
		root = new QNode();
		openList.add(root);
		problem = new IncompleteProblem(agent.getProblem());
		planner.setProblem(problem);
		numNodes = 0;
		
		while(openList.size() > 0)
		{
			QNode currQNode = whichNodeToExpand();
			List<QNodePair> children = currQNode.expandNode();
			if(children != null)
				for(QNodePair child : children)
				{
					openList.add(child.posQNode);
					openList.add(child.negQNode);
				}
		}

		planner.setProblem(agent.getProblem());
		System.out.println("NUMNODES: " + numNodes);
		
	}
	
	Fault getBestQ()
	{
		if(root.isLeafNode)
			return null;
		
		int minDepth = Integer.MAX_VALUE;
		QNodePair bestChild = null;
		for(QNodePair child : root.children)
		{
			int maxDepth = Math.max(getMinMaxDepth(child.posQNode), getMinMaxDepth(child.negQNode));
			if(maxDepth < minDepth)
			{
				minDepth = maxDepth;
				bestChild = child;
			}
		}
		
//		LinkedList<QNodePair> qToAsk = new LinkedList<QNodePair>();
//		for(int i = 0; i < root.children.size(); i+=2)
//		{
//			QNodePair qp = new QNodePair();
//			qp.posQNode = root.children.get(i);
//			qp.negQNode = root.children.get(i+1);
//			qToAsk.add(qp);
//		}
//		
//		for(QNodePair qp : qToAsk)
//		{
//			int maxDepthTrueSide = getDepth(qp.posQNode);
//			int maxDepthFalseSide = getDepth(qp.negQNode);
//			
//			qp.maxDepth = Math.max(maxDepthTrueSide, maxDepthFalseSide);
//		}

		return agent.numVarIndexToRiskForCubeOrMinterm.get(bestChild.posQNode.qFaultIndex);
	}
	
	int getMinMaxDepth(QNode n)
	{
		if(n.isLeafNode) return 0;
		int minDepth = Integer.MAX_VALUE; 
		for(QNodePair child : n.children) 
		{
			int maxDepth = Math.max(getMinMaxDepth(child.posQNode), getMinMaxDepth(child.negQNode));
			minDepth = Math.min(minDepth, maxDepth);
		}
		return minDepth + 1;
	}
	
	int getMaxDepth(QNode n)
	{
		if(n.isLeafNode) return 0;
		
		int depth = 0;
		for(QNodePair child : n.children) 
		{
			depth = Math.max(1 + getMaxDepth(child.posQNode), depth);
			depth = Math.max(1 + getMaxDepth(child.negQNode), depth);
		}
		
		return depth;
	}
		
	class QNodePair
	{
		public QNode posQNode;
		public QNode negQNode;
		int maxDepth;
	}
			
	class QNode
	{
		public QNode()//root node constructor
		{
			isNewPlanNode = true;
			parent = null;
			children = null;
			qFaultIndex = -1;
			depth = 0;
			
			bddRefKB = agent.bdd.ref(agent.bdd.getOne());
			
			ActionInstance firstAction = plan.get(0);
			List<ActionInstance> restOfPlan = plan.subList(1, plan.size());
			bddRefPFE = RiskCounter.getFailureExplanationSentence_BDDRef(agent.problem, restOfPlan, firstAction, Planner.solver);			
			
			numNodes++;
			
			System.out.println(agent.bdd.toString(bddRefPFE));
		}
		
		public QNode(QNode p, Integer index, Boolean value)
		{	
			parent = p; 
			qFaultIndex = index;
			Fault currQFault = agent.numVarIndexToRiskForCubeOrMinterm.get(index);
	
			int bddIndexForcurrQFault = agent.riskToBDD.get(currQFault);
			if(value == false)
				bddRefKB = agent.bdd.ref(agent.bdd.and(parent.bddRefKB, agent.bdd.not(bddIndexForcurrQFault)));
			else
				bddRefKB = agent.bdd.ref(agent.bdd.and(parent.bddRefKB, bddIndexForcurrQFault));
			
			bddRefPFE = parent.bddRefPFE;
			depth = parent.depth + 1;
			numNodes++;
		}
		
		public String toString(){return "depth: " + depth + ", index: " + qFaultIndex + ", isReplan: " + isNewPlanNode + ", isLeaf: " + isLeafNode + ", " + removeNULLT(agent.bdd.toString(bddRefKB)); }
			
		Boolean isNewPlanNode = false;		//this node has a new plan bc of previous PFE SAT/TRUE
											// for its parent or is root node.
		Boolean isLeafNode = false;			//all support vars/faults in PFE were answered and
											//PFE has gone to FALSE Ð no minTerms left			

		QNode parent; 				// a reference
		List <QNodePair> children; 		//references
		Integer qFaultIndex; 		//the question that was asked to arrive at this node
		int bddRefKB; 				//additive over the course of all plans/PFEs
		Integer depth;
		
		int bddRefPFE; 					//a bdd reference
		//List<ActionInstance> actions;	// a ref
		//List<ActionInstance> plan;		//a ref

		Boolean isPFESAT(){return false;}		//determines whether this node is a NewPlanNode
		Boolean areQsRemaining(){return false;}		//determines if the Node is a leaf Ð plan is good
		List<String> currentPFE(){return null;}		//reduced PFE using varsOfPFEanswered
		Boolean cutoffStrategy(){return false;}		//some switch for when to stop expanding nodes Ð 
		// then default to our sum over vars heuristic?
		List<Integer>  nextQs(){return null;}		//used to expand a node
		
		
		
		/**
		 * Q: for replanning nodes, there was a q answered, and the resulting KB entailed the PFE of both itself and its parent
		 * Then a new actionList is generated from the KB and a plan is generated.
		 * The new plan has the parents plus its own KB and a new PFE.
		 * Is there a need to keep the old PFE and the new PFE?
		 * The intuition is that the PFE is used once to expand the node and then it no longer needed.
		 * Do we overwrite the PFE that proved the failure in the replanning node, or do we place it in its children only. 
		 * 
		 */
		List<QNodePair> expandNode()
		{		
			//if(KB AND PFE == FALSE) // termination condition - success - is leafnode
			if(agent.bdd.and(bddRefKB, bddRefPFE) == agent.bdd.getZero())
			{
				//Plan will succeed given the knowledge in the KB
				isLeafNode = true;
				System.out.println(this + " : " + this.parent);
				return null;
			}
			else if(agent.bdd.and(bddRefKB, agent.bdd.not(bddRefPFE)) == agent.bdd.getZero())
			{
				//The plan will fail given the knowledge in the KB
				List<ActionInstance> fakeActions = updateActionsForNewPlan(this);
				problem.setActionInstances(fakeActions);
				List<ActionInstance> relaxedPlan = Simulation_PL_QA.getInstance().runPlannerThread(Simulation_PL_QA.getInstance().getPlannerType());
				System.out.print("* ");	
				if(relaxedPlan == null)
				{
					isLeafNode = true;
					isNewPlanNode = true;
					System.out.println(this + " : " + this.parent);
					return null;
				}
				else
				{
					ActionInstance firstAction = relaxedPlan.get(0);
					List<ActionInstance> restOfPlan = relaxedPlan.subList(1, relaxedPlan.size());
					bddRefPFE = RiskCounter.getFailureExplanationSentence_BDDRef(problem, restOfPlan, firstAction, Planner.solver);
					isNewPlanNode = true;
				}
			}
			
			System.out.println(this + " : " + this.parent);
			System.out.println(agent.bdd.toString(bddRefPFE));
			
			int bddRefSupportsPFE = agent.bdd.support(bddRefPFE);
			String supportsPFE = agent.bdd.toString(bddRefSupportsPFE);
			int bddRefSupportsKB = agent.bdd.support(bddRefKB);
			String supportsKB = agent.bdd.toString(bddRefSupportsKB);
			children = new LinkedList<QNodePair>();
			
			//System.out.println(supportsKB);

			//else continue examining supports as below
			
			for(int i = 0; i < agent.getNumBDDVars() - 1; i++)// or more than -1 ?
			{
				if(!supportsPFE.contains("TRUE") && !supportsPFE.contains("FALSE") && supportsPFE.charAt(i) != '-') 
				{
					if(supportsKB.contains("TRUE") || supportsKB.charAt(i) == '-' )
					{
						QNodePair child = new QNodePair();
						child.posQNode = new QNode(this, i, true);
						child.negQNode = new QNode(this, i, false);
						children.add(child);
					}
				}	
			}

			return this.children;
		}
		
		
		
		//Integer numChildren(QNode currNode) {return 0;}
		Integer numDescendents(){return 0;}			//ChildrenÕs children, etc.
		
		Integer depth(){return 0;}	
	}
	
	
	public List<ActionInstance> updateActionsForNewPlan(QNode replanNode)
	{
		List<ActionInstance> fakeActions  = Actions_Utility.makeActionsListDeepCopy(agent.getActions());
		Hashtable<String, IncompleteActionInstance> iActionsHT = new Hashtable<String, IncompleteActionInstance>();
		
		for(ActionInstance act : fakeActions)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			iActionsHT.put(act.getName(), a);
		}
		
		int bddRefSupports = agent.bdd.support(replanNode.bddRefKB);
		String supports = agent.bdd.toString(bddRefSupports);
		for(int i = 0; i < agent.getNumBDDVars() - 1; i++ )
		{	
			char value = supports.charAt(i);
			if(value != '-')
			{
				Fault currQFault = agent.numVarIndexToRiskForCubeOrMinterm.get(i);
				IncompleteActionInstance a = iActionsHT.get(currQFault.getActionName());
						
				if(currQFault.getRiskName().equals(Fault.PRECOPEN))
				{
					Proposition p = Proposition.getPropositionFromIndex(currQFault.getPropositionName());
					a.getPossiblePreconditions().remove(p);
					
					if(value == '1')
						a.getPreconditions().add(p);
				}
				if(currQFault.getRiskName().equals(Fault.UNLISTEDEFFECT))
				{
					Proposition p = Proposition.getPropositionFromIndex(currQFault.getPropositionName());
					a.getPossibleAddEffects().remove(p);
					
					if(value == '1')
						a.getAddEffects().add(p);
				}
				if(currQFault.getRiskName().equals(Fault.POSSCLOB))
				{
					Proposition p = Proposition.getPropositionFromIndex(currQFault.getPropositionName());
					a.getPossibleDeleteEffects().remove(p);
					
					if(value == '1')
						a.getDeleteEffects().add(p);
				}
			}
		}
		
		return Actions_Utility.getListFrom_String_IAI_HT(iActionsHT);
	}
	
	public String removeNULLT(String st) {return st.replace('\n', ' ');}
}
