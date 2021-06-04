package com.triplive.service;

import java.util.List;
import java.util.Optional;

import com.triplive.entity.Community;

public interface CommunityService {
        // 저장
        void savePosting(Community community);

        // 수정
        void updatePosting(Community community);
    
        // 글 삭제
        void deletePosting(Community community);
    
        // 글 상세 조회
        Optional<Community> getPosting(Community community);
    
        // 글 목록 조회
        List<Community> getPostingList(Integer Page);
}
