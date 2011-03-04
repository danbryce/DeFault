package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;
import java.math.*;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.LearningTypes;
import edu.usu.cs.ka.qa.currentsystem.simulator.*;
import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.planner.*;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class QTree 
{
	Agent agent;
	Planner planner;
	List<ActionInstance> plan;
	QNode root;
	List<QNode> openList;
	IncompleteProblem problem;
	int numNodes;
	boolean is1StepLookahead;
	boolean usePruning;
	boolean useMinAvg;
	boolean useRelaxedPlanSolver;
	
	static LinkedList<Integer> bddRefs;
	
	public static int counterRPSCalls = 0;
	
	boolean debug = false;
	
	public QTree(Agent a, List<ActionInstance> p, boolean is1StepLA, boolean isAB, boolean isAvg, boolean isRPS)
	{	
		openList = new LinkedList<QNode>();
		agent = a;
		plan = p;
		
		bddRefs = new LinkedList<Integer>();
		
		numNodes = 0;
				
		//planner = Simulation_PL_QA.getInstance().getPlanner();
		planner = SimulationPLQA.getInstance().getPlanner();
		problem = new IncompleteProblem(agent.getProblem());
		planner.setProblem(problem);
		is1StepLookahead = is1StepLA;
		usePruning = isAB;
		useMinAvg = isAvg;
		useRelaxedPlanSolver = isRPS;
		
		
		root = new QNode();
		openList.add(root);

		

		
		//currentState = new HashSet(agent.getProblem().getInitialState());
		
		if(debug)System.out.println("BUILDTREE...");	
	}

	QNode whichNodeToExpand(){return openList.remove(0);}		//some switch for an expansion strategy
	
	public void derefAllQTreeBddRefs()
	{
		for(Integer bddRef : bddRefs)
			agent.bdd.deref(bddRef);
	}
	
	Fault getBestQ(boolean isNextPossPreOnly)
	{
		if(is1StepLookahead)
		{
			BigInteger possModels = new BigInteger(new String("2")).pow(agent.bdd.numberOfVariables() - 1);
			BigDecimal totalPossModels = new BigDecimal(possModels);
			
			Fault bestQ = null;
			double minEntropy = 1;
			root.expandNode();
			for(QNodePair child : root.children)
			{
				boolean isNextActionPossPreFault = false;
				Fault f = agent.numVarIndexToRiskForCubeOrMinterm.get(child.posQNode.qFaultIndex);
				if(f.getActionName().equals(plan.get(0).getName()) && f.getRiskName().equals(Fault.PRECOPEN))
					isNextActionPossPreFault = true;
				if((isNextPossPreOnly && isNextActionPossPreFault) || !isNextPossPreOnly)
				{	
					child.posQNode.expandNode();
					child.negQNode.expandNode();

					int bddRef_QFault = agent.riskToBDD.get(f);					
					int bddRef_MasterKB = agent.get_bddRef_KB();
					int bbdRef_posChildPFE = child.posQNode.bddRefPFE;
					int bbdRef_negChildPFE = child.negQNode.bddRefPFE;
					
					int bddRef_SuccessPosSide = agent.bdd.and(bddRef_QFault, bddRef_MasterKB, agent.bdd.not(bbdRef_posChildPFE));
					int bddRef_SuccessNegSide = agent.bdd.and(agent.bdd.not(bddRef_QFault), bddRef_MasterKB, agent.bdd.not(bbdRef_negChildPFE));
					
					BigDecimal posModels = new BigDecimal(RiskCounter.getModelCount(bddRef_SuccessPosSide));
					BigDecimal negModels = new BigDecimal(RiskCounter.getModelCount(bddRef_SuccessNegSide));
	
					double posProb = posModels.divide(totalPossModels).doubleValue();
					double negProb = negModels.divide(totalPossModels).doubleValue();
					
					double entropy = -posProb * Math.log(posProb) - negProb * Math.log(negProb);
					if(entropy < minEntropy)
					{
						minEntropy = entropy;
						bestQ = f;
					}
				}
			}
			
			derefAllQTreeBddRefs();
			planner.setProblem(agent.getProblem());
			if(debug)System.out.println("NUMNODES: " + numNodes);
			return bestQ;
		}
		else
		{
			root.expandNode();
			if(root.isLeafNode)
				return null;
			
			int minDepth = Integer.MAX_VALUE;
			QNodePair bestChild = null;
			for(QNodePair child : root.children)
			{
				int depth;
				if(useMinAvg)
					depth = getAvgDepth(child, Integer.MIN_VALUE, minDepth);
				else
					depth = getMaxDepth(child, Integer.MIN_VALUE, minDepth);
				if(depth <= minDepth)
				{
					minDepth = depth;
					bestChild = child;
				}
			}
			
			derefAllQTreeBddRefs();
			planner.setProblem(agent.getProblem());
			if(debug)System.out.println("NUMNODES: " + numNodes);
			if(debug)System.out.println("BESTCHILD: " + bestChild);
			return agent.numVarIndexToRiskForCubeOrMinterm.get(bestChild.posQNode.qFaultIndex);
		}
	}

	int getMinDepth(QNode n, int alpha, int beta)
	{
		int best;
		if(usePruning)
		{
			if( n.depth >= beta)
				return n.depth;
			best = beta;
		}
		else
			best = Integer.MAX_VALUE;
		
		n.expandNode();
		if(n.isLeafNode) return n.depth;
		for(QNodePair child : n.children) 
		{
			if(usePruning)
			{
				beta = best;
				if(alpha >= beta)
					break;
			}
			if(useMinAvg)
				best = Math.min(best, getAvgDepth(child, alpha, beta));
			else
				best = Math.min(best, getMaxDepth(child, alpha, beta));
		}
		return best;
	}
	
	int getMaxDepth(QNodePair n, int alpha, int beta)
	{
		int best;
		if(usePruning)
			best = alpha;
		else
			best = Integer.MIN_VALUE;
		
		best = Math.max(alpha, getMinDepth(n.posQNode, alpha, beta));
		if(usePruning) 
		{
			alpha = best;
			if(alpha >= beta)
				return alpha;
		}
		return Math.max(best, getMinDepth(n.negQNode, alpha, beta));
	}
	
	int getAvgDepth(QNodePair n, int alpha, int beta)
	{
		int value = getMinDepth(n.posQNode, alpha, beta);
		if(usePruning && value/2 > beta)
			return value / 2;
		value += getMinDepth(n.negQNode, alpha, beta);
		return value / 2;
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
		Boolean isNewPlanNode = false;	//this node has a new plan bc of previous PFE SAT/TRUEfor its parent or is root node.
		Boolean isLeafNode = false;		//all support vars/faults in PFE were answered and PFE has gone to FALSE Ð no minTerms left			
		
		QNode parent; 				// a reference
		List <QNodePair> children; 	//references
		Integer qFaultIndex; 		//the question that was asked to arrive at this node
		int bddRefKB; 				//additive over the course of all plans/PFEs
		Integer depth;
		
		int bddRefPFE; 				//a bdd reference for this node's inherited and unique "knowledge"

		public QNode()//root node constructor
		{
			isNewPlanNode = true;
			parent = null;
			children = null;
			qFaultIndex = -1;
			depth = 0;
			
			bddRefKB = agent.bdd.ref(agent.bdd.getOne());
			bddRefPFE  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			
			bddRefs.add(bddRefKB);
			bddRefs.add(bddRefPFE);
			
			numNodes++;
			
			if(debug)System.out.println(agent.bdd.toString(bddRefPFE));
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
			
			bddRefs.add(bddRefKB);
			
			bddRefPFE = parent.bddRefPFE;
			depth = parent.depth + 1;
			numNodes++;
		}
		
		public String toString(){return "depth: " + depth + ", index: " + qFaultIndex + ", isReplan: " + isNewPlanNode + ", isLeaf: " + isLeafNode + ", " + removeNULLT(agent.bdd.toString(bddRefKB)); }
			
		Boolean isPFESAT()			{return false;}		//determines whether this node is a NewPlanNode
		Boolean areQsRemaining()	{return false;}		//determines if the Node is a leaf Ð plan is good
		List<String> currentPFE()	{return null;}		//reduced PFE using varsOfPFEanswered
		Boolean cutoffStrategy()	{return false;}		//some switch for when to stop expanding nodes Ð 
		// then default to our sum over vars heuristic?
		List<Integer> nextQs()		{return null;}		//used to expand a node
		
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
			if(agent.bdd.and(bddRefKB, agent.bdd.not(bddRefPFE)) == agent.bdd.getZero())
			{
				//The plan will fail given the knowledge in the KB
				List<ActionInstance> fakeActions = updateActionsForNewPlan(this);
				problem.setActionInstances(fakeActions);
				
				if(useRelaxedPlanSolver)
				{
					int bddREF_RPS_PFE = getPFE_RPSolver();
					
					bddRefs.add(bddREF_RPS_PFE);
					
					if(debug)System.out.print("* ");	
					if(bddREF_RPS_PFE == 0)//
					{
						bddRefPFE = agent.bdd.getZero();//
						isLeafNode = true;
						isNewPlanNode = true;
						if(debug)System.out.println(this + " : " + this.parent);
						return null;
					}
					else
					{
						bddRefPFE = bddREF_RPS_PFE;
						isNewPlanNode = true;
					}
				}
				else//uses regular solver
				{
					List<ActionInstance> hypotheticalPlan = SimulationPLQA.getInstance().runPlannerThread(SimulationPLQA.getInstance().getPlannerType());
					//List<ActionInstance> hypotheticalPlan = Simulation_PL_QA.getInstance().runPlannerThread(Simulation_PL_QA.getInstance().getPlannerType());
					if(debug)System.out.print("* ");	
					if(hypotheticalPlan == null)
					{
						bddRefPFE = agent.bdd.getZero();//
						isLeafNode = true;
						isNewPlanNode = true;
						if(debug)System.out.println(this + " : " + this.parent);
						return null;
					}
					else
					{
						bddRefPFE  = RiskCounter.tryThisPFEGenerator(agent.problem, hypotheticalPlan, Planner.solver);
						bddRefs.add(bddRefPFE);
						
						isNewPlanNode = true;
					}
				}
			}
			//if(KB AND PFE == FALSE) // termination condition - success - is leafnode
			if(agent.bdd.and(bddRefKB, bddRefPFE) == agent.bdd.getZero())
			{
				//Plan will succeed given the knowledge in the KB
				isLeafNode = true;
				if(debug)System.out.println(this + " : " + this.parent);
				return null;
			}
			
			if(debug)System.out.println(this + " : " + this.parent);
			if(debug)System.out.println(agent.bdd.toString(bddRefPFE));
			
			int bddRefSupportsPFE = agent.bdd.support(bddRefPFE);
			String supportsPFE = agent.bdd.toString(bddRefSupportsPFE);
			int bddRefSupportsKB = agent.bdd.support(bddRefKB);
			String supportsKB = agent.bdd.toString(bddRefSupportsKB);
			children = new LinkedList<QNodePair>();
			
			if(debug)System.out.println(supportsKB);

			//continue examining supports as below
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
		
		Integer numChildren() {return 0;}
		Integer numDescendents(){return 0;}	//ChildrenÕs children, etc.
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
	
	private int getPFE_RPSolver()
	{
		counterRPSCalls++;
		if(counterRPSCalls > SimulationPLQA.getInstance().maxPlannerCalls)
			planner.setNumTimesPlannerCalled(SimulationPLQA.getInstance().maxPlannerCalls+1);
		
		RelaxedPlanSolver RPSolver;
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		solverOptions.setUseMultipleSupportersInPlanningGraph(true);
		solverOptions.setFaultType(SolverOptions.FAULT_TYPE.BDD_FAULTS);
		
		if(Planner.currPType.equals(Planner.PlannerTypes.JDD))
			solverOptions.setBiasRelaxedPlanWithFaults(true);
		else if (Planner.currPType.equals(Planner.PlannerTypes.AMIR))
			solverOptions.setBiasRelaxedPlanWithFaults(false);
		else
			if(debug) System.out.println("NON-RECOGNIZED PLANNER TYPE");
				
		try {
			RPSolver = new RelaxedPlanSolver(agent.domain, problem, searchStatistics, solverOptions);
			BDDRiskSet fs = (BDDRiskSet) RPSolver.getExplanation();
			return fs.getFaults();
		} catch (IllDefinedProblemException e) { e.printStackTrace(); }
		
		return 0;
	}
}
