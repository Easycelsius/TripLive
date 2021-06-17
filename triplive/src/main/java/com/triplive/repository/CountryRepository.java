package com.triplive.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.triplive.entity.Country;

@Repository("CountryRepository")
public interface CountryRepository extends JpaRepository<Country, Long> {
    // 특수 검색 기능
    List<Country> findAllByIsoNum(Long isoNum, Pageable pageable);
    Long countByIsoNum(Long isoNum);

    // 키워드 검색 기능
    //List<Country> findAllByTxtOriginCnContainingOrTitleContaining(String keyword1, String keyword2, Pageable pageable);
    //Long countByTxtOriginCnContainingOrTitleContaining(String keyword1, String keyword2);


    /* 
        insert -> save(엔티티 객체)
        select -> findById(키 타입), getOne(키 타입), countBy()
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}
