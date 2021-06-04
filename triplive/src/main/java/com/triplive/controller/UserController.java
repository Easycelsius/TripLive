package com.triplive.controller;

import javax.servlet.http.HttpServletRequest;

import com.triplive.entity.User;
import com.triplive.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("user")
@Log4j2
public class UserController {

    @Autowired
	private UserService userService;

    @RequestMapping("/login.do")
    public String login(User user, String cache, HttpServletRequest request){

        log.info("login 시도");
        log.info("로그인 요청 유저 정보 : " + user);
        log.info("로그인 정보 저장 여부 : " + cache);

        // 아이디로 일단 가져오기
        User member = userService.getUser(user);
        log.info("아이디 조회 : " + member);

        // 패스워드가 동일시에 세션 할당
        if(member.getPassword().equals(user.getPassword())){
            member.setPassword(""); // 세션 내 비밀번호 전처리
            request.setAttribute("user", member);
            log.info("로그인 진행 및 세션 할당");
            return "redirect:../index.do";
        } else {
            request.setAttribute("user", "failed");
            log.info("비밀번호 불일치");
            return "redirect:login_resist_form.do";
        }
        
    }

    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step) {
        log.info(step + " 요청");
        return "user/"+step;
    }
}
