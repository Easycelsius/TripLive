package com.triplive;

import com.triplive.pythonconnect.InterpreterPython;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

import lombok.extern.log4j.Log4j2;

@SpringBootApplication
@EnableScheduling
@Log4j2
public class TripliveApplication {
	public static void main(String[] args) {
		SpringApplication.run(TripliveApplication.class, args);
		log.info("스프링부트 실행 완료");

	}

}