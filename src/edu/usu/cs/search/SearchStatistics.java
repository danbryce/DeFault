package edu.usu.cs.search;

import java.util.Date;

import edu.usu.cs.planner.PlanMetric;

public class SearchStatistics {
	private int nodesExpanded = 0;
	private Long startTime = null;
	private Long elapsedTime = null;
	private Long pauseTime = null;
	private PlanMetric[] lastGValue = null;
	private PlanMetric[] lastHValue = null;
	private PlanMetric[] lastFValue = null;
	private int lastBranchingFactor = 0;
	private StateNode solutionNode = null;
	private int nodesGenerated = 0;
	
	public StateNode getSolutionNode() {
		return solutionNode;
	}



	public void setSolutionNode(StateNode solutionNode) {
		this.solutionNode = solutionNode;
	}



	public SearchStatistics() {
		startTime = System.currentTimeMillis();
	}
	
	public void pauseTime(){
		pauseTime = System.currentTimeMillis();
	}
	
	public void resumeTime(){
		startTime += System.currentTimeMillis() - pauseTime;
	}

	
	public Long getElapsedTime() {
		//if(elapsedTime == null){
			elapsedTime = System.currentTimeMillis() - startTime;
		//}
		return elapsedTime;
	}

	public int getNodesExpanded() {
		return nodesExpanded;
	}


	public Long getTimeSinceStart(){
		Date currentTime = new Date();
		return currentTime.getTime() - startTime;

	}

	public void setNodesExpanded(int i) {
		nodesExpanded = i;
	}
	
	public void processNode(StateNode node){
//		lastGValue = node.getGValue();
		lastHValue = node.getHeuristicValue();
//		lastFValue = node.getFValue();
		if(node.getSubsequentNodes() != null)
			lastBranchingFactor  = node.getSubsequentNodes().size();
		else
			lastBranchingFactor = -1;
		nodesExpanded++;
	}

	
	public String toString(){
		StringBuilder sb = new StringBuilder();
		sb.append(getTimeSinceStart()/1000.0).append("\t");
//		sb.append(lastBranchingFactor).append("\t");
		sb.append(nodesExpanded).append("\t");
//		for(int i = 0; i < lastFValue.length; i++){
//			sb.append(lastFValue[i]).append("\t");
//		}
//		for(int i = 0; i < lastGValue.length; i++){
//			sb.append(lastGValue[i]).append("\t");
//		}
		for(int i = 0; i < lastHValue.length; i++){
			sb.append(lastHValue[i]).append("\t");
		}
		
		
		return sb.toString();
	}



	public int getNodesGenerated() {
		// TODO Auto-generated method stub
		return nodesGenerated ;
	}



	public void setNodesGenerated(int id) {
		// TODO Auto-generated method stub
		nodesGenerated = id;
	}
	
}
