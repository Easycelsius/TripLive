package com.triplive.repository;


import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.triplive.entity.CountryAccidentService2;

@Repository("CountryAccidentService2Repository")
public interface CountryAccidentService2Repository extends JpaRepository<CountryAccidentService2, Long> {
    
    // // 특수 검색 기능
     List<CountryAccidentService2> findAllByCountryIsoAlp2(String countryIsoAlp2, Pageable pageable);
     Long countByCountryIsoAlp2(String countryIsoAlp2);

    // // 키워드 검색 기능
    List<CountryAccidentService2> findAllByCountryEngNmContainingOrCountryNmContaining(String keyword1, String keyword2, Pageable pageable);
    Long countByCountryEngNmContainingOrCountryNmContaining(String keyword1, String keyword2);

    
    
    
    /* 
        insert -> save(엔티티 객체)
        select -> findById(키 타입), getOne(키 타입)
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}
