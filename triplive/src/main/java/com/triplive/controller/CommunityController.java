package com.triplive.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class CommunityController {

    @RequestMapping("/community.do")
    public String insertBoard() {
        log.info("community.do 요청");
        return "community/commu_main";
    }

    
}
