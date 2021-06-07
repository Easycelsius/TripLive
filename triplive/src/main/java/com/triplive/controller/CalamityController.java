package com.triplive.controller;

import com.triplive.service.CalamityServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("calamity")
public class CalamityController {
    @Autowired
    CalamityServiceImpl calamityService;
    
    @RequestMapping("/calamity.do")
    public String calamityMain(Model m){
        log.info("calamityMain 요청");
        m.addAttribute("list", calamityService.getPostingList(1) );
        return "calamity/calamity";
    }

    // 
    @RequestMapping("/{step}.do")
    public String calamity(@PathVariable String step) {
        log.info("calamity page 요청");
        return "calamity/"+step;
    }


}
