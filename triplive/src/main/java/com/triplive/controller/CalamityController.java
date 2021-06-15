package com.triplive.controller;

import java.security.Principal;

import com.triplive.service.CalamityServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("calamity")
public class CalamityController {
    @Autowired
    CalamityServiceImpl calamityService;
    
    @RequestMapping("/calamity.do")
    public String calamityMain(Model m, @RequestParam(value = "page", defaultValue = "1") Integer pageNum, String isoNum, String keyword, Principal principal){
        log.info("calamityMain 요청");
        m.addAttribute("list", calamityService.getPostingList(pageNum, isoNum, keyword) );
        m.addAttribute("pageList", calamityService.getPageList(pageNum, isoNum, keyword));
        return "calamity/calamity";
    }

    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String calamity(@PathVariable String step) {
        log.info("calamity page 요청");
        return "calamity/"+step;
    }


}
