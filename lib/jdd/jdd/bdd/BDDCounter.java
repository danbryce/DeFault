package jdd.bdd;

import java.io.PrintStream;
import java.math.BigInteger;

import jdd.util.Allocator;
import jdd.util.JDDConsole;
import jdd.util.NodeName;

public class BDDCounter {
	
	private static NodeTable nt;
	private static int count;
	//private static BigInteger bigCount;
	
	private static char [] set_chars = null;
	private static int set_chars_len;

	private static void helpGC() { // make things easier for the garbage collector
		nt = null;
	}

	// -----------------------------------------------------------------
	public static BigInteger getBigSetCount(int bdd, int max, NodeTable nt)  {
		BigInteger bcount = BigInteger.valueOf(0);
		if( bdd < 2) {
			if (bdd == 0) {
				//BDDCounter.bigCount = BigInteger.valueOf(0);
			} else {
				bcount = BigInteger.valueOf(1);
				bcount = bcount.shiftLeft(max);
			}
		} else {

			if(BDDCounter.set_chars == null || BDDCounter.set_chars.length < max)
				BDDCounter.set_chars = Allocator.allocateCharArray(max);
			BDDCounter.set_chars_len = max;
			BDDCounter.nt = nt;
			//bcount = BigInteger.valueOf(0);

			bcount = setBigCount_rec(bdd, 0, BigInteger.valueOf(1), bcount);
			helpGC();
		}
//		BigInteger rval = BDDCounter.bigCount;
		return bcount;
		
	}
	private static BigInteger setBigCount_rec(int bdd, int level, BigInteger currentCount, BigInteger bcount) {

		if(level == set_chars_len) {
			if(bcount.equals(BigInteger.valueOf(0)))					
				bcount = currentCount;
			else
				bcount.add(currentCount);
			
//			for(int i = 0; i < set_chars_len; i++)
//				JDDConsole.out.print(set_chars[i]);
//
//			JDDConsole.out.println();
			return bcount;
		}

		int var = nt.getVar(bdd);
		if(var > level || bdd == 1 ) {
			set_chars[level] = '-';
			bcount = setBigCount_rec(bdd, level+1, currentCount.multiply(BigInteger.valueOf(2)), bcount);
			return bcount;
		}

		int low = nt.getLow(bdd);
		int high = nt.getHigh(bdd);

		if(low != 0) {
			set_chars[level] = '0';
			bcount = setBigCount_rec(low, level+1, currentCount, bcount);
		}

		if(high != 0) {
			set_chars[level] = '1';
			bcount = setBigCount_rec(high, level+1, currentCount, bcount);
		}
		return bcount;
	}
	
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
