package com.triplive.controller;

import com.triplive.service.SafetyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class SafetyListController {
    @Autowired
    private SafetyService s;

    @RequestMapping("/safetylist.do")
    public String safetyBoard() {
        log.info("safetylist.do 요청");
        return "safetylist/safetylist";
    }
    
}
