package com.triplive.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import com.triplive.entity.GetCountrySafetyList2;
import com.triplive.repository.CalamityRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("CalamityService")
@Transactional
@Log4j2
public class CalamityServiceImpl implements CalamityService{

        @Autowired
	private CalamityRepository calamityDAO;


        // 글 상세 조회
        public Optional<GetCountrySafetyList2> getPosting(GetCountrySafetyList2 calamity){
                log.info("글 상세 조회 실행");
                return calamityDAO.findById(calamity.getSftyNoticeId());
        }


        @Override
        public List<GetCountrySafetyList2> getPostingList(Integer Page) {
                // TODO Auto-generated method stub
                return calamityDAO.findAll();
        }

        // // 페이징
        // // 글 목록 조회
        // // https://velog.io/@max9106/Spring-Boot-JPA-MySQL-%ED%8E%98%EC%9D%B4%EC%A7%95

        // private static final int BLOCK_PAGE_MIN_COUNT = 10; // 블럭에 존재하는 페이지 수
        // private static final int PAGE_POST_COUNT = 5; // 블럭에 존재하는 페이지 수

        // @Transactional
        // public List<Calamity> getPostingList(Integer pageNum) {
        //         // Page<Community> page = communityDAO.findAll(PageRequest.of(pageNum-1, PAGE_POST_COUNT, Sort.by(Sort.Direction.ASC, "date")));
        //         // List<Community> communities = page.getContent();
        //         return null; 
        // }

}
