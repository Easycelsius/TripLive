package com.triplive;

import com.triplive.pythonconnect.InterpreterPython;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import lombok.extern.log4j.Log4j2;

@SpringBootApplication
@Log4j2
public class TripliveApplication {
	public static void main(String[] args) {
		SpringApplication.run(TripliveApplication.class, args);
		log.info("스프링부트 실행 완료");

		// 실행전 pip install pymysql 설치 필요
		log.info("파이썬 스크립트 실행");
		InterpreterPython interpreter = new InterpreterPython();

		log.info("파이썬 크롤링 실행");
		interpreter.pythonFileStart();
	}

}