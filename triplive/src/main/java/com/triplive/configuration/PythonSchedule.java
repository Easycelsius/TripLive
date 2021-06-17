package com.triplive.configuration;

import java.util.Date;

import com.triplive.pythonconnect.InterpreterPython;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Component
public class PythonSchedule {
    // 10초에 한번 실행된다.
    @Scheduled(fixedDelay = 1000 * 60 * 60 * 24)
    public void printDate () {
        log.info(new Date().toString());
        
        // 실행전 pip install pymysql 설치 필요
		log.info("파이썬 스크립트 실행");
		InterpreterPython interpreter = new InterpreterPython();

		log.info("파이썬 크롤링 실행");
		interpreter.pythonFileStart();
    }
    
}
