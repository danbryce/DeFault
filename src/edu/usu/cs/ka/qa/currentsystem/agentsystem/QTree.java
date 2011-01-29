package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.ka.qa.currentsystem.simulator.*;

public class QTree 
{
	Agent agent;
	List<ActionInstance> plan;
	QNode root;
	List<QNode> openList;
	
	public QTree(Agent a, List<ActionInstance> p)
	{
		agent = a;
		plan = p;
		root = new QNode();
		openList.add(root);
	}

	QNode whichNodeToExpand(){return openList.remove(0);}		//some switch for an expansion strategy
	Boolean cutoffStrategy(){return false;}		//some switch for when to stop expanding nodes Ð 
												// then default to our sum over vars heuristic?
	void buildTree()
	{
		while(openList.size() > 0)
		{
			QNode currQNode = whichNodeToExpand();
			List<QNode> children = currQNode.expandNode();
			openList.addAll(children);
		}
	}
	
	Fault getBestQ(){return null;}
	
	{
		Planner planner = Simulation_PL_QA.getInstance().getPlanner();
		planner.setProblem(null);
		Simulation_PL_QA.getInstance().runPlannerThread(Simulation_PL_QA.getInstance().getPlannerType());
		
		planner.setProblem(agent.getProblem());
	}
				
	class QNode
	{
		public QNode()//root node constructor
		{
			isNewPlanNode = true;
			parent = null;
			children = null;
			qFaultIndex = -1;
			
			bddRefKB = agent.bdd.ref(agent.bdd.getOne());
			
			ActionInstance firstAction = plan.get(0);
			List<ActionInstance> restOfPlan = plan.subList(1, plan.size());
			bddRefPFE = RiskCounter.getFailureExplanationSentence_BDDRef(agent.problem, restOfPlan, firstAction, Planner.solver);
		}
		
		public QNode(QNode parent, Integer index, Boolean value)
		{
			qFaultIndex = index;
			Fault currQFault = agent.numVarIndexToRiskForCubeOrMinterm.get(index);
			int bddIndexForcurrQFault = agent.riskToBDD.get(currQFault);
			if(value == false)
				bddRefKB = agent.bdd.ref(agent.bdd.and(parent.bddRefKB, agent.bdd.not(bddIndexForcurrQFault)));
			else
				bddRefKB = agent.bdd.ref(agent.bdd.and(parent.bddRefKB, bddIndexForcurrQFault));
			
			bddRefPFE = parent.bddRefPFE;
		}
			
		Boolean isNewPlanNode;		//this node has a new plan bc of previous PFE SAT/TRUE
									// for its parent or is root node.
		Boolean isLeafNode;			//all support vars/faults in PFE were answered and
									//PFE has gone to FALSE Ð no minTerms left			

		QNode parent; 				// a reference
		List <QNode> children; 		//references
		Integer qFaultIndex; 		//the question that was asked to arrive at this node
		int bddRefKB; 				//additive over the course of all plans/PFEs
		
		int bddRefPFE; 					//a bdd reference
		//List<ActionInstance> actions;	// a ref
		//List<ActionInstance> plan;		//a ref

		Boolean isPFESAT(){return false;}		//determines whether this node is a NewPlanNode
		Boolean areQsRemaining(){return false;}		//determines if the Node is a leaf Ð plan is good
		List<String> currentPFE(){return null;}		//reduced PFE using varsOfPFEanswered
		
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
		List<QNode> expandNode()
		{
			int bddRefSupports = agent.bdd.support(bddRefPFE);
			
			String supports = agent.bdd.toString(bddRefSupports);
			
			//if(KB AND PFE == FALSE) // termination condition - success - is leafnode
			//else if(KB entails PFE)
			//{
			//	replan
			//	if(plan == null), done set isLeafNode
			//	else replan node - set isNewPlanNode.
			//}
			//else continue examining supports as below
			
			for(int i = 0; i < supports.length() - 1; i++)// or more than -1 ?
			{
				if(supports.getBytes()[i] != '-') {
					QNode trueNode = new QNode(this, i, true);
					QNode falseNode = new QNode(this, i, false);
					children.add(trueNode);
					children.add(falseNode);
				}	
			}

			return this.children;
		}
		//Integer numChildren(QNode currNode) {return 0;}
		Integer numDescendents(){return 0;}			//ChildrenÕs children, etc.
		
		Integer depth(){return 0;}	
	}
}
