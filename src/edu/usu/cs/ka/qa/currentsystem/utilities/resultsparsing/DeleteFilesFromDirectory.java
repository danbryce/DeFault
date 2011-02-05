package edu.usu.cs.ka.qa.currentsystem.utilities.resultsparsing;

import java.io.*;
public class DeleteFilesFromDirectory 
{

	public static void main(String[] args) 
	{
		File dir = new File("/Users/CHW/Desktop/parcprinter/");

		String[] children = dir.list();

		for (int i=0; i<children.length; i++) 
		{
			String filename = children[i];
			System.out.println(filename);
			if(filename.contains("0.275-"))
			{
//				File target = new File("/Users/CHW/Desktop/parcprinter/" + filename);
//
//				if (target.delete())
//		          System.err.println("** Deleted " + filename + " **");
			}
		}
	}
}