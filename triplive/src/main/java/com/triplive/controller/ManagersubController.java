package com.triplive.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("managersub")
public class ManagersubController {
public class ManagerController {
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step) {
        log.info("managersub page 요청");
        return "managersub/"+step;
    }
}
}
 