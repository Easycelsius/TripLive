package com.triplive.service;

import java.util.List;

import javax.transaction.Transactional;

import com.triplive.entity.WorldCity;
import com.triplive.repository.WorldWeatherRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("WorldWeatherService")
@Transactional
@Log4j2
public class WorldWeatherServiceImpl implements WorldWeatherService {
    @Autowired
    private WorldWeatherRepository worldWeatherDAO;

    @Override
    public List<WorldCity> getCityNameList(String country, String input) {
        log.info("City 목록 조회");
        return worldWeatherDAO.findByIsoAlp2AndCityNameStartsWith(country, input);
    }

    
}
