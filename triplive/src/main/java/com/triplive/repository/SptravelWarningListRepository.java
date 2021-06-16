package com.triplive.repository;

import com.triplive.entity.GetSptravelWarningList2;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("SptravelWarningListRepository")
public interface SptravelWarningListRepository extends JpaRepository<GetSptravelWarningList2, Long> {
    
}
