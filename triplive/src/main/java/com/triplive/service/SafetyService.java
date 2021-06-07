package com.triplive.service;
import java.util.List;
import java.util.Optional;
import com.triplive.entity.GetCountrySafetyList2;


public interface SafetyService {

        // 글 목록 조회
        List<GetCountrySafetyList2> getSafetyList(Integer Page);    
}