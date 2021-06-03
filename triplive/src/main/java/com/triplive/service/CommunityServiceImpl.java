package com.triplive.service;

import java.util.List;

import javax.transaction.Transactional;

import com.triplive.entity.Community;
import com.triplive.repository.CommunityRepository;

import org.springframework.beans.factory.annotation.Autowired;
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
                // log.info("글 남기기 실행 후 저장 : " + communityDAO.update(community));
        }
    
        // 글 삭제
        public void deletePosting(Community community){
               
        }
    
        // 글 상세 조회
        public void getPosting(Community community){

        }

        // 글 목록 조회
        public List<Community> getPostingList(Community community) {
                // TODO Auto-generated method stub
                return null;
        }

}
