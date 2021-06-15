package com.triplive.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import com.triplive.service.SafetyServiceImpl;
import org.springframework.ui.Model;


import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class BasicController {
    @Autowired
    SafetyServiceImpl safetyService;

    @RequestMapping(value= {"/", "index.do"})
    public String index(Model m, @RequestParam(value = "page", defaultValue = "1") Integer pageNum, String isoAlp2, String keyword ) {
        log.info("main page 요청");
        m.addAttribute("safetylist", safetyService.getSafetyList(pageNum, isoAlp2, keyword));
        m.addAttribute("countrylist", safetyService.getSafetyList(pageNum, isoAlp2, keyword));
        return "main/index";
    }
}

