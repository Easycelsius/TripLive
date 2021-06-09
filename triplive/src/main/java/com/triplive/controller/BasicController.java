package com.triplive.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class BasicController {
    @RequestMapping(value= {"/", "index.do"})
    public String index() {
        log.info("main page 요청");
        return "main/index";
    }
}

