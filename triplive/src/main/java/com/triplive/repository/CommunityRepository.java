package com.triplive.repository;


import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

import com.triplive.entity.Community;

public interface CommunityRepository extends JpaRepository<Community, Long> {

    // 특수 검색 기능
    List<Community> findAllByCountryIsoNum(Long isoNum, Pageable pageable);
    Long countByCountryIsoNum(Long isoNum);

    // 키워드 검색 기능
    List<Community> findAllByBdContentContainingOrBdTitleContaining(String keyword1, String keyword2, Pageable pageable);
    Long countByBdContentContainingOrBdTitleContaining(String keyword1, String keyword2);

    /* 
        insert -> save(엔티티 객체)
        select -> findById(키 타입), getOne(키 타입)
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}
