package com.triplive.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import com.triplive.entity.GetCountrySafetyNewsListNew;
import com.triplive.repository.CalamityRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.*;


import lombok.extern.log4j.Log4j2;

@Service("CalamityService")
@Transactional
@Log4j2
public class CalamityServiceImpl implements CalamityService{
        
        @Autowired
	private CalamityRepository calamityDAO;

        
        
        
        // // 페이징
        // // 글 목록 조회
        // // https://velog.io/@max9106/Spring-Boot-JPA-MySQL-%ED%8E%98%EC%9D%B4%EC%A7%95
        private static final int BLOCK_PAGE_NUM_COUNT = 100;  // 블럭에 존재하는 페이지 번호 수
        private static final int PAGE_POST_COUNT = 10;       // 한 페이지에 존재하는 게시글 수
        
        @Override
        public Optional<GetCountrySafetyNewsListNew> getPosting(GetCountrySafetyNewsListNew calamity) {
                log.info("글 상세 조회 실행");
                return calamityDAO.findById(calamity.getSftyNoticeId());
        }
        
        @Transactional
        public List<GetCountrySafetyNewsListNew> getPostingList(Integer pageNum, String isoAlp2, String keyword) {
                log.info("긴급속보 페이징 처리");
                log.info(isoAlp2 + "/" + keyword);
                
                Sort sort1 = Sort.by("wrtDt").descending();
                Pageable pageable = PageRequest.of(pageNum-1, PAGE_POST_COUNT, sort1);
                
                if(!"".equals(isoAlp2) && isoAlp2 != null){
                        log.info("특수 검색 진행 : 국가");
                        return calamityDAO.findAllByCountryIsoAlp2(isoAlp2, pageable);
                } else if(!"".equals(keyword) && keyword != null){
                        log.info("특수 검색 진행 : 키워드");
                        return calamityDAO.findAllByTitleContainingOrCountryNmContaining(keyword, keyword, pageable);
                } else {
                        log.info("일반 검색 진행");
                        Page<GetCountrySafetyNewsListNew> result = calamityDAO.findAll(pageable);
                        log.info(result);

                        return result.toList(); 
                }
        }

        @Transactional
        public Long getCalamityCount(String isoAlp2, String keyword) {

                if(!"".equals(isoAlp2) && isoAlp2 != null){
                        return calamityDAO.countByCountryIsoAlp2(isoAlp2);
                }

                if(!"".equals(keyword) && keyword != null){
                        return calamityDAO.countByTitleContainingOrCountryNmContaining(keyword, keyword);
                }

                return calamityDAO.count();
        }

        @Transactional
        public Integer[] getPageList(Integer curPageNum, String isoAlp2, String keyword) {
                Integer[] pageList = new Integer[BLOCK_PAGE_NUM_COUNT];

                // 총 게시글 갯수
                Double postsTotalCount = Double.valueOf(this.getCalamityCount(isoAlp2, keyword));

                // 총 게시글 기준으로 계산한 마지막 페이지 번호 계산 (올림으로 계산)
                Integer totalLastPageNum = (int)(Math.ceil((postsTotalCount/PAGE_POST_COUNT)));

                // 현재 페이지를 기준으로 블럭의 마지막 페이지 번호 계산
                Integer blockLastPageNum = (totalLastPageNum > curPageNum + BLOCK_PAGE_NUM_COUNT) ? curPageNum + BLOCK_PAGE_NUM_COUNT : totalLastPageNum;

                // 페이지 시작 번호 조정
                curPageNum = (curPageNum <= 3) ? 1 : curPageNum - 2;

                // 페이지 번호 할당
                for (int val = curPageNum, idx = 0; val < blockLastPageNum; val++, idx++) {
                        pageList[idx] = val;
                }

                return pageList;
        }

        
}







