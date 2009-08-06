/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: MinimalFormatter.java 30 2007-02-16 14:16:12Z zas $
 */
package edu.usu.cs.plangraph;

import java.io.*;
import java.text.*;
import java.util.*;
import java.util.logging.*;
import java.util.logging.Formatter;

/**
 * Minimal output formatter, based on {@link java.util.logging.SimpleFormatter}.
 */
public class MinimalFormatter extends Formatter
{
    private static final boolean OUTPUT_TIME = false;
    
    private Date date = new Date();
    private MessageFormat formatter = new MessageFormat("{0,time}");
    private Object args[] = new Object[] {date};
    
    private String lineSeparator = System.getProperty("line.separator");
    
    @Override
    public synchronized String format(LogRecord record)
    {
        StringBuffer sb = new StringBuffer();
        
        if (OUTPUT_TIME) {
            date.setTime(record.getMillis());
            StringBuffer text = new StringBuffer();
            formatter.format(args, text, null);
            sb.append(text);
            sb.append("  ");
        }

        String message = formatMessage(record);
        sb.append(message);

        sb.append(lineSeparator);
        if (record.getThrown() != null) {
            try {
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                record.getThrown().printStackTrace(pw);
                pw.close();
                sb.append(sw.toString());
            } catch (Exception ex) {
            }
        }
        return sb.toString();
    }
}
