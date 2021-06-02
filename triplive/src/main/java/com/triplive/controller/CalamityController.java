package com.triplive.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class CalamityController {

    @RequestMapping("/calamity.do")
    public String calamity() {
        log.info("calamity 요청");
        return "views/calamity";
    }
}

