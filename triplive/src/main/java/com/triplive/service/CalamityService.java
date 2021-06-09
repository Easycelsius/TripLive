package com.triplive.service;

import java.util.List;
import java.util.Optional;

import com.triplive.entity.GetCountrySafetyList2;

public interface CalamityService {

        // 글 상세 조회
        Optional<GetCountrySafetyList2> getPosting(GetCountrySafetyList2 calamity);

        // 글 목록 조회
        List<GetCountrySafetyList2> getPostingList(Integer pageNum, String isoAlp2, String keyword);
}
