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
@RequestMapping("community")
@Log4j2
public class CommunityController {

    @Autowired
	private CommunityServiceImpl communityService;

    @Autowired
    private CommentServiceImpl commentsService;

    @Autowired
    private BdImageServiceImpl imageService;

    // 글 남기기시 저장할 부분
    @RequestMapping("/posting.do")
    public String posting(Community community, Principal principal, Long isoNum, @Valid @RequestParam("bdImage") List<MultipartFile> files) throws IllegalStateException, IOException{
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

        // ----- 사진 처리 -----
        log.info(files);

        BdImage bdImage = new BdImage();
        bdImage.setCommunity(community);

        // File dest = new File(".");

        String rootPath = System.getProperty("user.dir");
        String basePath = rootPath 
                                    // + File.separator + "triplive" 
                                    + File.separator + "src" 
                                    + File.separator + "main" 
                                    + File.separator + "resources" 
                                    + File.separator + "META-INF" 
                                    + File.separator + "resources" 
                                    + File.separator + "uploaded";
        
        // 파일 업로드(여러개) 처리 부분
        for(int i = 0; i < files.size(); i++){

            // 파일의 확장자 추출
            String originalFileExtension;
            String contentType = files.get(i).getContentType();

            // 확장자명이 존재하지 않을 경우 처리 x
            if(ObjectUtils.isEmpty(contentType)) {
                break;
            }
            else {  // 확장자가 jpeg, png인 파일들만 받아서 처리
                if(contentType.contains("image/jpeg"))
                    originalFileExtension = ".jpg";
                else if(contentType.contains("image/png"))
                    originalFileExtension = ".png";
                else  // 다른 확장자일 경우 처리 x
                    break;
            }

            // 기존 파일명
            String originalName = files.get(i).getOriginalFilename();
            bdImage.setOriginalFileName(originalName);

            // 파일 경로
            String filePath = basePath + File.separator + community.getBdNo();
            
            /* 파일이 저장되는 폴더가 없으면 폴더를 생성합니다. */
            if (!new File(filePath).exists()) {
                try{
                    new File(filePath).mkdir();
                }
                catch(Exception e){
                    e.getStackTrace();
                }
            }

            filePath += File.separator + i + ".jpg";
            bdImage.setStoredFilePath(filePath);

            // 파일 사이즈
            bdImage.setFileSize(files.get(i).getSize());

            // 파일 이진수화
            // Encoder encoder = Base64.getEncoder();
            // bdImage.setBdImage(new String(encoder.encode(files.get(i).getBytes())));
            // System.out.println(bdImage.getBdImage());

            File dest = new File(filePath);
            files.get(i).transferTo(dest); // 서버 내 저장

            // DB 내 저장
            imageService.saveImage(bdImage);
        }


        return "redirect:commu.do";
    }

    // community page 메인
    @RequestMapping("/commu.do")
    public String communityBoard(Model model, @RequestParam(value = "page", defaultValue = "1") Integer pageNum, String isoNum, String keyword, Principal principal) {
        log.info("community.do 요청 : "+pageNum+" 페이지 / 키워드 : "+keyword+" / 국가 검색 : "+isoNum);

        model.addAttribute("communities", communityService.getPostingList(pageNum, isoNum, keyword));
        model.addAttribute("pageList", communityService.getPageList(pageNum, isoNum, keyword));

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

        Optional<Community> result = communityService.getPosting(community);

        model.addAttribute("community", result);

        result.get().setCount(result.get().getCount()+1);
        communityService.savePosting(result.get()); // 조회수
        
    }

    
    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step) {
        log.info(step + " 요청");
        return "community/"+step;
    }
    
}


