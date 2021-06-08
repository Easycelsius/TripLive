package com.triplive.pythonconnect;

import org.python.util.PythonInterpreter;

public class InterpreterPython {

    public void crawlingStart(String filename){
        // System.setProperty("python.cahedir.skip", "true");
        // System.setProperty("python.import.pymysql", "false");
        PythonInterpreter interpreter = new PythonInterpreter();
        // interpreter.execfile(filename);
        interpreter.exec("import sys");
        interpreter.exec("print(sys.version)");
        interpreter.exec("print('python execute')");
        interpreter.close();
    }
}
