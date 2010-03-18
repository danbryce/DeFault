package jdd.bdd;

import java.io.PrintStream;

import jdd.util.Allocator;
import jdd.util.JDDConsole;
import jdd.util.NodeName;

public class BDDCounter {
	
	private static NodeTable nt;
	private static int count;
	
	private static char [] set_chars = null;
	private static int set_chars_len;

	private static void helpGC() { // make things easier for the garbage collector
		nt = null;
	}

	// -----------------------------------------------------------------
	public static int getSetCount(int bdd, int max, NodeTable nt)  {

		if( bdd < 2) {
			if (bdd == 0) {
				BDDCounter.count = 0;
			} else {
				BDDCounter.count = 1;
				BDDCounter.count <<= max;
			}
		} else {

			if(BDDCounter.set_chars == null || BDDCounter.set_chars.length < max)
				BDDCounter.set_chars = Allocator.allocateCharArray(max);
			BDDCounter.set_chars_len = max;
			BDDCounter.nt = nt;
			BDDCounter.count = 0;

			setCount_rec(bdd, 0, 1);
			helpGC();
		}
		
		return BDDCounter.count;
	}
	private static void setCount_rec(int bdd, int level, int currentCount) {

		if(level == set_chars_len) {
			count += currentCount;
//			for(int i = 0; i < set_chars_len; i++)
//				JDDConsole.out.print(set_chars[i]);
//
//			JDDConsole.out.println();
			return;
		}

		int var = nt.getVar(bdd);
		if(var > level || bdd == 1 ) {
			set_chars[level] = '-';
			setCount_rec(bdd, level+1, currentCount * 2);
			return;
		}

		int low = nt.getLow(bdd);
		int high = nt.getHigh(bdd);

		if(low != 0) {
			set_chars[level] = '0';
			setCount_rec(low, level+1, currentCount);
		}

		if(high != 0) {
			set_chars[level] = '1';
			setCount_rec(high, level+1, currentCount);
		}
	}
}
