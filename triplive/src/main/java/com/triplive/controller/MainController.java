package com.triplive.controller;

import com.triplive.entity.BdImage;
import com.triplive.entity.Comment;
import com.triplive.entity.Community;
import com.triplive.entity.Country;
import com.triplive.entity.User;
import com.triplive.service.BdImageServiceImpl;
import com.triplive.service.CommentServiceImpl;
import com.triplive.service.CommunityService;
import com.triplive.service.CommunityServiceImpl;
import com.triplive.service.SafetyServiceImpl;
import com.triplive.service.UserServiceImpl;
import com.triplive.vo.PageRequestDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j2;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Base64.Encoder;

import javax.swing.filechooser.FileSystemView;
import javax.validation.Valid;

@Controller
@Log4j2
public class MainController {

    @Autowired
	private CommunityServiceImpl communityService;

    @Autowired
    private CommentServiceImpl commentsService;

    @Autowired
    private BdImageServiceImpl imageService;

    @Autowired
    private CommentServiceImpl CommentService;
    
    @Autowired
    private SafetyServiceImpl SafetyService;

    @Autowired
    private UserServiceImpl UserService;

    
    // community page 메인
    @RequestMapping("/commu.do")
    public String communityBoard(Model model, @RequestParam(value = "page", defaultValue = "1") Integer pageNum, String keyword, Principal principal) {
        log.info("community.do 요청 : "+pageNum+" 페이지 / "+keyword);

        // model.addAttribute("communities", communityService.getPostingList(pageNum, keyword));
        // model.addAttribute("pageList", communityService.getPageList(pageNum, keyword));

        return "community/commu";
    }

    // 댓글 가져오기
    @RequestMapping("/getCommentList.do")
    @ResponseBody
    public List<Comment> getCommentList(Long detail){

        log.info("commentSave 실행");

        return commentsService.getCommentList(detail);
    }

    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step) {
        log.info(step + " 요청");
        return "community/"+step;
    }
    
}


