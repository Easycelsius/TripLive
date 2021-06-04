package com.triplive.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import com.triplive.entity.Community;
import com.triplive.repository.CommunityRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("CommunityService")
@Transactional
@Log4j2
public class CommunityServiceImpl implements CommunityService{

        @Autowired
	private CommunityRepository communityDAO;

        // 저장
        public void savePosting(Community community){
                log.info("글 남기기 실행 후 저장 : " + communityDAO.save(community));
        }

        // 수정
        public void updatePosting(Community community){
                log.info("글 남기기 수정 실행");
                communityDAO.save(community);
        }
    
        // 글 삭제
        public void deletePosting(Community community){
                log.info("글 삭제 : " + community.getBd_no());
                communityDAO.deleteById(community.getBd_no());
        }
    
        // 글 상세 조회
        public Optional<Community> getPosting(Community community){
                log.info("글 상세 조회 실행");
                return communityDAO.findById(community.getBd_no());
        }

        // 페이징
        // 글 목록 조회
        // https://velog.io/@max9106/Spring-Boot-JPA-MySQL-%ED%8E%98%EC%9D%B4%EC%A7%95

        private static final int BLOCK_PAGE_MIN_COUNT = 10; // 블럭에 존재하는 페이지 수
        private static final int PAGE_POST_COUNT = 5; // 블럭에 존재하는 페이지 수

        @Transactional
        public List<Community> getPostingList(Integer pageNum) {
                // Page<Community> page = communityDAO.findAll(PageRequest.of(pageNum-1, PAGE_POST_COUNT, Sort.by(Sort.Direction.ASC, "date")));
                // List<Community> communities = page.getContent();
                return null; 
        }

}
