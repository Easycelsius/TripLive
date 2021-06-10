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

        String[] command = new String[2];
        command[0] = "python";
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

            int result = executor.execute(commandLine);
            log.info(result);
            
            System.out.println("result: " + result);
            System.out.println("output: " + outputStream.toString());

            outputStream.close();


        } catch (Exception e) {
            log.info(e);
        }
    }

    public void pythonFileStart(){
        // 실행할 파이썬 파일 리스트 (DB 입력용)
		String[] pyFileList = {
			"CountryAccidentService2" ,
			"GetCountryAgreementList2", 
			// "Country", // 국가코드
			// "GetCountryFlagList2.py", 
			"GetCountryHistoryList2", 
			"GetCountryMapList2",
			"GetCountrySafetyList2",
			"GetCountrySafetyNewsListNew",
			"GetEmbassyList2",
			"GetEntranceVisaList2",
			"GetLocalContactList2",
			"GetSptravelWarningList2",
			"GetTravelAlarmList2",
			"GetTravelBanList2"
		};

		for(int i=0; i<pyFileList.length; i++){
			log.info(pyFileList[i]);
			// this.crawlingStart("triplive/src/main/java/com/triplive/pythonconnect/"+pyFileList[i]+".py"); // 지섭 경로	
			this.crawlingStart("src/main/java/com/triplive/pythonconnect/"+pyFileList[i]+".py"); // 기타 경로
		}
    }

}
