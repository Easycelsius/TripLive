package com.triplive.service;

import java.util.List;

import com.triplive.entity.WorldCity;

public interface WorldWeatherService {
    List<WorldCity> getCityNameList(String country, String input);
}
