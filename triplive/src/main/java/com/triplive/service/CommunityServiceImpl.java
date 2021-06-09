package com.triplive.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import com.triplive.entity.Community;
import com.triplive.repository.CommunityRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
                log.info("글 삭제 : " + community.getBdNo());
                communityDAO.deleteById(community.getBdNo());
        }
    
        // 글 상세 조회
        public Optional<Community> getPosting(Community community){
                log.info("글 상세 조회 실행");
                return communityDAO.findById(community.getBdNo());
        }

        // 페이징
        // 글 목록 조회
        // https://velog.io/@max9106/Spring-Boot-JPA-MySQL-%ED%8E%98%EC%9D%B4%EC%A7%95

        private static final int BLOCK_PAGE_NUM_COUNT = 10;  // 블럭에 존재하는 페이지 번호 수
        private static final int PAGE_POST_COUNT = 10;       // 한 페이지에 존재하는 게시글 수
        
        @Transactional
        public List<Community> getPostingList(Integer pageNum, String isoNum, String keyword) {
                // Page<Community> page = communityDAO.findAll(PageRequest.of(pageNum-1, PAGE_POST_COUNT, Sort.by(Sort.Direction.ASC, "date")));
                // List<Community> communities = page.getContent();

                log.info("커뮤티니 페이징 처리");
                log.info(isoNum + "/" + keyword);

                Sort sort1 = Sort.by("bdNo").descending();
                Pageable pageable = PageRequest.of(pageNum-1, PAGE_POST_COUNT, sort1);
                
                if(!"".equals(isoNum) && isoNum != null){
                        log.info("특수 검색 진행 : 국가");
                        return communityDAO.findAllByCountryIsoNum(Long.parseLong(isoNum), pageable);
                } else if(!"".equals(keyword) && keyword != null){
                        log.info("특수 검색 진행 : 키워드");
                        return communityDAO.findAllByBdContentContainingOrBdTitleContaining(keyword, keyword, pageable);
                } else {
                        log.info("일반 검색 진행");
                        Page<Community> result = communityDAO.findAll(pageable);
                        log.info(result);

                        return result.toList(); 
                }
        }

        @Transactional
        public Long getCommunityCount(String isoNum, String keyword) {

                if(!"".equals(isoNum) && isoNum != null){
                        return communityDAO.countByCountryIsoNum(Long.parseLong(isoNum));
                }

                if(!"".equals(keyword) && keyword != null){
                        return communityDAO.countByBdContentContainingOrBdTitleContaining(keyword, keyword);
                }

                return communityDAO.count();
        }

        @Transactional
        public Integer[] getPageList(Integer curPageNum, String isoNum, String keyword) {
                Integer[] pageList = new Integer[BLOCK_PAGE_NUM_COUNT];

                // 총 게시글 갯수
                Double postsTotalCount = Double.valueOf(this.getCommunityCount(isoNum, keyword));

                // 총 게시글 기준으로 계산한 마지막 페이지 번호 계산 (올림으로 계산)
                Integer totalLastPageNum = (int)(Math.ceil((postsTotalCount/PAGE_POST_COUNT)));

                // 현재 페이지를 기준으로 블럭의 마지막 페이지 번호 계산
                Integer blockLastPageNum = (totalLastPageNum > curPageNum + BLOCK_PAGE_NUM_COUNT) ? curPageNum + BLOCK_PAGE_NUM_COUNT : totalLastPageNum;

                // 페이지 시작 번호 조정
                curPageNum = (curPageNum <= 3) ? 1 : curPageNum - 2;

                // 페이지 번호 할당
                for (int val = curPageNum, idx = 0; val <= blockLastPageNum; val++, idx++) {
                        pageList[idx] = val;
                }

                return pageList;
        }
        // 참고 : https://victorydntmd.tistory.com/333


}
