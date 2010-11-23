package edu.usu.cs.ka.currentsystem.utilities.thread;

import edu.usu.cs.ka.currentsystem.agentsystem.*;

class ExecThread extends Thread {
	String[] arguments;
	Thread callingThread;
	public static boolean done = false;
	ExecThread(Thread CallingThread, String[] args)
	{
		callingThread = CallingThread;
		arguments = args;
		done = false;
	}
	public void run()
	{
		try
		{
			WorldApplication.main(arguments);
			System.out.println("Done");
		}
		catch (java.lang.OutOfMemoryError e)
		{
			System.out.println("Out of Memory!");
		}
		callingThread.interrupt();
		done = true;
		
	}
}