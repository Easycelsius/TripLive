package com.triplive.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class TripInfoController {

    @RequestMapping("/tripinfo.do")
    public String infoBoard() {
        log.info("tripinfo.do 요청");
        return "tripinfo/tripinfo";
    }
    
    
}
