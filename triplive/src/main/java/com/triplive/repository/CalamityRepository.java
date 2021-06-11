package com.triplive.repository;


import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.triplive.entity.GetCountrySafetyNewsListNew;
@Repository("CalamityRepository")
public interface CalamityRepository extends JpaRepository<GetCountrySafetyNewsListNew, String> {
    
    // // 특수 검색 기능
     List<GetCountrySafetyNewsListNew> findAllByCountryIsoAlp2(String isoAlp2, Pageable pageable);
     Long countByCountryIsoAlp2(String isoAlp2);

    // // 키워드 검색 기능
    List<GetCountrySafetyNewsListNew> findAllByTitleContainingOrCountryNmContaining(String keyword1, String keyword2, Pageable pageable);
    Long countByTitleContainingOrCountryNmContaining(String keyword1, String keyword2);

    
    
    
    /* 
        insert -> save(엔티티 객체)
        select -> findById(키 타입), getOne(키 타입)
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}
