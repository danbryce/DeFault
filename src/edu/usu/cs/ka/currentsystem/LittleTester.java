package edu.usu.cs.ka.currentsystem;

public class LittleTester {

	/**
	 * @param args
	 */
	public static void main(String[] args) 
	{
//		boolean[] v = new boolean[10];
//		
//		for(boolean var : v)
//			System.out.println(var);
		
		String temp1 = "move_0_0_0_1";
		String temp2 = "move_1_0_0_0";
		String temp3 = "move_1_0_1_1";
		String temp4 = "move_1_1_1_0";
		
		System.out.println(temp1.hashCode());
		System.out.println(temp2.hashCode());
		System.out.println(temp3.hashCode());
		System.out.println(temp4.hashCode());
		
		if(temp1.equals(temp2))
			System.out.println("EQUAL");

	}

}
