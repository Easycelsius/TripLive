package com.triplive.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.triplive.entity.GetCountrySafetyList2;

@Repository("SafetyListRepository")
public interface SafetyListRepository extends JpaRepository<GetCountrySafetyList2, String> {
    // 특수 검색 기능
    List<GetCountrySafetyList2> findAllByCountryIsoAlp2(String isoAlp2, Pageable pageable);
    Long countByCountryIsoAlp2(String isoAlp2);

    // 키워드 검색 기능
    List<GetCountrySafetyList2> findAllByTxtOriginCnContainingOrTitleContaining(String keyword1, String keyword2, Pageable pageable);
    Long countByTxtOriginCnContainingOrTitleContaining(String keyword1, String keyword2);


    /* 
        insert -> save(엔티티 객체)
        select -> findById컬럼명(키 타입), getOne(키 타입), countBy(),findAllBy칼럼명()
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}
