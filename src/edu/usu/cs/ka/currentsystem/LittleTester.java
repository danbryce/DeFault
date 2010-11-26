package edu.usu.cs.ka.currentsystem;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.LinkedList;
import java.util.Scanner;
import java.util.Random;

public class LittleTester 
{
	/** Generate 10 random integers in the range 0..99. */ 
	public static final void main(String... aArgs)
	{
	    log("Generating 10 random integers in range 0..99.");
	    
	    //note a single Random object is reused here
	    Random randomGenerator = new Random();
	    for (int idx = 1; idx <= 100; ++idx)
	    {
	      int randomInt = randomGenerator.nextInt(3);
	      log("Generated : " + randomInt);
	    }
	    
	    log("Done.");
	}
	  
	  private static void log(String aMessage)
	  {
	    System.out.println(aMessage);
	  }
}

