package edu.usu.cs.search;

import java.util.List;
import java.util.PriorityQueue;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;

public interface Search {
//	public Node getNextNode();
//	
//	public void addNode(Node node);
//	
//	public void addNodes(Collection<Node> nodes);


	
	public void initialize();
	public List<IncompleteActionInstance> getPath();
	public int getNodesExpandedCount();
	public long getTotalTimeTaken();
	public long getHeuristicTimeTaken();
	public PriorityQueue<StateNode> getOpen();
	
}
