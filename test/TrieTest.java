import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

import org.junit.Test;

import edu.usu.cs.pddl.domain.incomplete.Trie;


public class TrieTest {


	@Test
	public void testSubsumes() {

		Trie<Integer> myTrie = new Trie<Integer>();

		Integer[][] list = {
				{1, 2, 3},
				{1, 4},
				{2, 4},
				{4}
		};

	
		for(int i = 0; i < list.length; i++){
			List<Integer> myList2 = new LinkedList<Integer>(Arrays.asList(list[i]));

			if(!myTrie.subsumes(myList2)){
				myTrie.removeSubsumed(myList2);
				myTrie.insert(myList2);
			}
			System.out.println(myTrie);
		}
		
		
		
		
		System.out.println(myTrie);

		//fail("Not yet implemented");
	}


	@Test
	public void testInsert() {


		//fail("Not yet implemented");
	}



	@Test
	public void testIntersect() {
		//fail("Not yet implemented");
	}

	@Test
	public void testUnion() {
		//fail("Not yet implemented");
	}

}

