package com.triplive.service;

import java.util.List;

import com.triplive.entity.WorldCity;

public interface WorldWeatherService {
    // 도시 목록 가져오기
    List<WorldCity> getCityNameList(String country, String input);
}