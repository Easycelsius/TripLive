package com.triplive.controller;

import javax.servlet.http.HttpSession;

import com.triplive.entity.Community;
import com.triplive.entity.User;
import com.triplive.service.CommunityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

import java.util.Date;

@Controller
@RequestMapping("community")
@Log4j2
public class CommunityController {

    @Autowired
	private CommunityService communityService;

    // 글 남기기시 저장할 부분
    @RequestMapping("/posting.do")
    public String posting(Community community, HttpSession session) {
        log.info("submit 데이터 확인 : " + community);

        // 오늘날짜 확인
        Date now = new Date();

        // community dto 내 유저 정보, 조회수, 날짜, 제목, 내용 담기
        Community com = community.builder().user((User)session.getAttribute("user")).count(0).date(now).build(); 
        
        // service 단으로 전달
        communityService.savePosting(community);
        
        log.info("posting.do 요청");
        return "redirect:commu.do";
    }

    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step) {
        log.info("community.do 요청");
        return "community/"+step;
    }
    
}


