package com.triplive.controller;

import com.triplive.service.SafetyServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("safetylist")
public class SafetyListController {
    @Autowired
    SafetyServiceImpl safetyService;

    @RequestMapping("/safetylist.do")
    public String safetyBoard(Model m, @RequestParam(value = "page", defaultValue = "1") Integer pageNum, String keyword, Principal principal) {
        log.info("safetylist.do 요청");
        m.addAttribute("safetylist", safetyService.getSafetyList(pageNum, keyword));
        m.addAttribute("pageList", safetyService.getPageList(pageNum, keyword));
        return "safetylist/safetylist";
    }
    
    @RequestMapping("/{step}.do")
    public String safetylist(@PathVariable String step) {
        log.info("safetylist page 요청");
        return "safetylist/"+step;
    }
}
