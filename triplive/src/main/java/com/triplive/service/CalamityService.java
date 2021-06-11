package com.triplive.service;

import java.util.List;
import java.util.Optional;

import com.triplive.entity.GetCountrySafetyNewsListNew;

public interface CalamityService {

        // 글 상세 조회
        Optional<GetCountrySafetyNewsListNew> getPosting(GetCountrySafetyNewsListNew calamity);

        // 글 목록 조회
        List<GetCountrySafetyNewsListNew> getPostingList(Integer pageNum, String isoAlp2, String keyword);
}
