package com.triplive.pythonconnect;

// import org.python.util.PythonInterpreter;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.PumpStreamHandler;

import lombok.extern.log4j.Log4j2;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

@Log4j2
public class InterpreterPython {

    public void crawlingStart(String filename){
        // // System.setProperty("python.cahedir.skip", "true");
        // // System.setProperty("python.import.pymysql", "false");
        // PythonInterpreter interpreter = new PythonInterpreter();
        // // interpreter.execfile(filename);
        // interpreter.exec("import sys");
        // interpreter.exec("print(sys.version)");
        // interpreter.exec("print('python execute')");
        // interpreter.close();

        String[] command = new String[2];
        command[0] = "python";
        //command[1] = "\\workspace\\java-call-python\\src\\main\\resources\\test.py";
        command[1] = filename;
        // command[2] = "10";
        // command[3] = "20";

        try {
            CommandLine commandLine = CommandLine.parse(command[0]);
            log.info(commandLine);
            for (int i = 1, n = command.length; i < n; i++) {
                commandLine.addArgument(command[i]);
            }

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            PumpStreamHandler pumpStreamHandler = new PumpStreamHandler(outputStream);
            DefaultExecutor executor = new DefaultExecutor();
            executor.setStreamHandler(pumpStreamHandler);
            log.info(pumpStreamHandler);

            int result = executor.execute(commandLine);
            log.info(result);
            
            // System.out.println("result: " + result);
            // System.out.println("output: " + outputStream.toString());
        } catch (Exception e) {
            log.info(e);
        }
        
        

    }
}
