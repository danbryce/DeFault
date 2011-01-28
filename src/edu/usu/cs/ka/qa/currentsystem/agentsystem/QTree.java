package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.ka.qa.currentsystem.simulator.*;

public class QTree 
{
	Agent agent;
	
	public QTree(Agent a)
	{
		agent = a;
	}
	
	QNode root;
	List<Proposition> state;		//state of world
	
	List<QNode> openList;
	QNode whichNodeToExpand(){return null;}		//some switch for an expansion strategy
	Boolean cutoffStrategy(){return false;}		//some switch for when to stop expanding nodes – 
												// then default to our sum over vars heuristic?
	void buildTree()
	{
		Planner planner = Simulation_PL_QA.getInstance().getPlanner();
		planner.setProblem(null);
		Simulation_PL_QA.getInstance().runPlannerThread(Simulation_PL_QA.getInstance().getPlannerType());
		
		planner.setProblem(agent.getProblem());
	}
	Fault getBestQ(){return null;}
				
	class QNode
	{
		Boolean isNewPlanNode;		//this node has a new plan bc of previous PFE SAT/TRUE
									// for its parent or is root node.
		Boolean isLeafNode;			//all support vars/faults in PFE were answered and
									//PFE has gone to FALSE – no minTerms left			

		QNode parent; 				// a reference
		List <QNode> children; 		//references
		Integer qFaultIndex; 		//the question that was asked to arrive at this node
		String varsAnswered; 		//additive over the course of all plans/PFEs
		
		List<String> PFE; 			//a reference
		//List<ActionInstance> actions;	// a ref
		//List<ActionInstance> plan;		//a ref

		Boolean isPFESAT(){return false;}		//determines whether this node is a NewPlanNode
		Boolean areQsRemaining(){return false;}		//determines if the Node is a leaf – plan is good
		List<String> currentPFE(){return null;}		//reduced PFE using varsOfPFEanswered
		
		List<Integer>  nextQs(){return null;}		//used to expand a node
		List<QNode> expandNode(){return null;}
		//Integer numChildren(QNode currNode) {return 0;}
		Integer numDescendents(){return 0;}			//Children’s children, etc.
		
		Integer depth(){return 0;}	
	}
}
