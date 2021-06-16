package com.triplive.repository;

import com.triplive.entity.GetTravelAlarmList2;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("TravelAlarmRepository")
public interface TravelAlarmRepository extends JpaRepository<GetTravelAlarmList2, Long> {
    
}
