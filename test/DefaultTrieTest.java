import org.junit.Test;

import edu.usu.cs.pddl.domain.incomplete.DefaultTrieNode;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.FaultLiteralTrieNode;



public class DefaultTrieTest {

	
	
	@Test
	public void andTest(){
		int num = 6;
		Fault[] faults = new Fault[num];
		DefaultTrieNode[] nodes = new DefaultTrieNode[num];
		for(int i = 0; i < num; i++){
			faults[i] =  new Fault(Fault.POSSADD, "a"+i, "p"+i);
			nodes[i] = new FaultLiteralTrieNode(faults[i]);
		}
		
		DefaultTrieNode r = nodes[0].and(nodes[1], 0, 2).and(nodes[2], 0, 3);
		
		System.out.println("End And Test");
	}
	
	@Test
	public void orTest(){
		Fault f1 = new Fault(Fault.POSSADD, "a1", "p1");
		Fault f2 = new Fault(Fault.POSSADD, "a2", "p2");

		FaultLiteralTrieNode f1n = new FaultLiteralTrieNode(f1, DefaultTrieNode.trueNode, DefaultTrieNode.falseNode, DefaultTrieNode.falseNode);
		FaultLiteralTrieNode f2n = new FaultLiteralTrieNode(f2, DefaultTrieNode.trueNode, DefaultTrieNode.falseNode, DefaultTrieNode.falseNode);
		
		DefaultTrieNode r = f1n.or(f2n);
		
		System.out.println("End Or Test");
	}

	
	@Test
	public void notTest(){
		int num = 6;
		Fault[] faults = new Fault[num];
		DefaultTrieNode[] nodes = new DefaultTrieNode[num];
		for(int i = 0; i < num; i++){
			faults[i] =  new Fault(Fault.POSSADD, "a"+i, "p"+i);
			nodes[i] = new FaultLiteralTrieNode(faults[i]);
		}
		
		DefaultTrieNode r = //nodes[0].and(nodes[1].and(nodes[2].or(nodes[5])).or(nodes[4])).or(nodes[3]).not();
			nodes[0].or(nodes[1]).or(nodes[2]).not(2);
		
		
		System.out.println("End Not Test");
	}
	
	
	@Test
	public void posdelTest(){
		int num = 6;
		Fault[] faults = new Fault[num];
		DefaultTrieNode[] nodes = new DefaultTrieNode[num];
		for(int i = 0; i < num; i++){
			faults[i] =  new Fault(Fault.POSSADD, "a"+i, "p"+i);
			nodes[i] = new FaultLiteralTrieNode(faults[i]);
		}
		
		int depth = 10;
		
		DefaultTrieNode dpt = DefaultTrieNode.falseNode;
		DefaultTrieNode dpt1 = DefaultTrieNode.falseNode;

		DefaultTrieNode dat = nodes[0].or(nodes[1]);
		DefaultTrieNode ndat = dat.not(depth);
		
		DefaultTrieNode t1 = dpt.and(dat, 0, depth);
		DefaultTrieNode t2 = dpt1.and(nodes[2], 0, depth);
		DefaultTrieNode t3 = ndat.and(nodes[2], 0, depth).and(nodes[3], 0, depth);
		
		DefaultTrieNode r = t1.or(t2.or(t3));
		
		
		
		
		
		System.out.println("End posdel Test");
	}
	
	
	@Test
	public void orSubsumeTest(){
		int num = 6;
		Fault[] faults = new Fault[num];
		DefaultTrieNode[] nodes = new DefaultTrieNode[num];
		for(int i = 0; i < num; i++){
			faults[i] =  new Fault(Fault.POSSADD, "a"+i, "p"+i);
			nodes[i] = new FaultLiteralTrieNode(faults[i]);
		}
		
		int depth = 10;
		
		DefaultTrieNode t = nodes[1].and(nodes[2].not(depth).and(nodes[3].not(depth).and(nodes[4].not(depth), 0, depth), 0, depth), 0, depth);
		DefaultTrieNode ts = nodes[3].not(depth);//nodes[2].or(nodes[3].not(depth).and(nodes[4], 0, depth));
		
		
		DefaultTrieNode t1 = t.removeSubsumed(t, ts);
		DefaultTrieNode ts1 = ts.removeSubsumed(ts, t1);
		
		DefaultTrieNode r = ts1.or(t1);
		
		DefaultTrieNode r1 = t1.or(ts1);
		
		
		//r should = ts
		
		
		
		System.out.println("End posdel Test");
	}
}
