package com.triplive.repository;

import com.triplive.entity.GetTravelBanList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("TravelBanListRepository")
public interface TravelBanListRepository extends JpaRepository<GetTravelBanList, Long> {
    
}
