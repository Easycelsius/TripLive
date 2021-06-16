package com.triplive.service;

import javax.transaction.Transactional;

import com.triplive.entity.CountryAccidentService2;
import com.triplive.repository.CountryAccidentService2Repository;
import com.triplive.repository.SafetyListRepository;
import com.triplive.repository.SptravelWarningListRepository;
import com.triplive.repository.TravelAlarmRepository;
import com.triplive.repository.TravelBanListRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("AdminStatisticService")
@Transactional
@Log4j2
public class AdminStatisticService {

    @Autowired
    TravelBanListRepository travelBanListRepository;

    @Autowired
    TravelAlarmRepository travelAlarmRepository;

    @Autowired
    SptravelWarningListRepository sptravelWarningListRepository; 

    @Autowired
    SafetyListRepository safetyListRepository; 

    @Autowired
    CountryAccidentService2Repository countryAccidentService2Repository;

    public Long countCountryAccident() {
        log.info("countCountryAccident 호출");
        return countryAccidentService2Repository.count();
    }

    public Long countSafetyList() {
        log.info("countSafetyList 호출");
        return safetyListRepository.count();
    }
    
    public Long sptravelWarningList() {
        log.info("sptravelWarningList 호출");
        return sptravelWarningListRepository.count();
    }

    public Long countTavelAlarm() {
        log.info("countTavelAlarm 호출");
        return travelAlarmRepository.count();
    }

    public Long countBanList() {
        log.info("countBanList 호출");
        return travelBanListRepository.count();
    }
    
}
