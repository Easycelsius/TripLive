package com.triplive.controller;

import com.triplive.entity.Comment;
import com.triplive.entity.Community;
import com.triplive.entity.Country;
import com.triplive.entity.User;
import com.triplive.service.CommentServiceImpl;
import com.triplive.service.CommunityService;
import com.triplive.service.CommunityServiceImpl;
import com.triplive.vo.PageRequestDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j2;

import java.security.Principal;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("community")
@Log4j2
public class CommunityController {

    @Autowired
	private CommunityServiceImpl communityService;

    @Autowired
    private CommentServiceImpl commentsService;

    // 글 남기기시 저장할 부분
    @RequestMapping("/posting.do")
    public String posting(Community community, Principal principal, Long isoNum){
        log.info("submit 데이터 확인 : " + community);

        // isoNum은 넘어오는데 자동으로 매핑이 안되서 강제로 값을 전달하기 위한 작업
        Country country = new Country();
        country.setIsoNum(isoNum);
        community.setCountry(country);

        // 오늘날짜 확인
        Date now = new Date();
        
        // community dto 내 유저 정보, 조회수, 날짜, 제목, 내용 담기
        community.setCount(0);
        community.setDate(now);

        User user = new User();
        user.setId(principal.getName());
        community.setUser(user);
        
        // service 단으로 전달
        communityService.savePosting(community);
        
        log.info("posting.do 요청");
        return "redirect:commu.do";
    }

    // community page 메인
    @RequestMapping("/commu.do")
    public String communityBoard(Model model, @RequestParam(value = "page", defaultValue = "1") Integer pageNum, String keyword, Principal principal) {
        log.info("community.do 요청 : "+pageNum+" 페이지 / "+keyword);

        model.addAttribute("communities", communityService.getPostingList(pageNum, keyword));
        model.addAttribute("pageList", communityService.getPageList(pageNum, keyword));

        return "community/commu";
    }

    // 댓글 저장
    @RequestMapping("/cmSave.do")
    @ResponseBody
    public void commentSave(Comment comment, Principal principal, Long detail){

        log.info("commentSave 실행");

        Community community = new Community();
        User user = new User();
        Date now = new Date();

        community.setBdNo(detail);
        user.setId(principal.getName());

        comment.setCommunity(community);
        comment.setUser(user);
        comment.setCmDate(now);

        log.info("저장할 댓글 내용 : " + comment);

        commentsService.saveCmt(comment);
    }

    // 댓글 삭제
    @RequestMapping("/deleteCm.do")
    @ResponseBody
    public void deleteCmt(Long cmNo, Long detail){
        log.info("deleteCmt 실행");
        log.info(cmNo);
        commentsService.deleteCmt(cmNo);
        
    }

    // 댓글 가져오기
    @RequestMapping("/getCommentList.do")
    @ResponseBody
    public List<Comment> getCommentList(Long detail){

        log.info("commentSave 실행");

        return commentsService.getCommentList(detail);
    }

    // 상세 페이지
    @RequestMapping("/board_detail.do")
    public void detail(Model model, Long detail, Principal principal) {
        log.info("게시글 조회 요청 : " + detail);

        Community community = new Community();
        community.setBdNo(detail); 
        community.setCount(communityService.getPosting(community).get().getCount() + 1); // 조회수
        
        model.addAttribute("community", communityService.getPosting(community));
    }

    
    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step) {
        log.info(step + " 요청");
        return "community/"+step;
    }
    
}


