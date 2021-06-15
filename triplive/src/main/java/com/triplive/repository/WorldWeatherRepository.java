package com.triplive.repository;

import java.util.List;

import com.triplive.entity.WorldCity;

import org.springframework.data.jpa.repository.JpaRepository;

public interface WorldWeatherRepository extends JpaRepository<WorldCity, Long> {
    // country(=IsoAlp2)와 일치하고 input(=CityName)으로 시작하는 도시 목록 검색
    List<WorldCity> findByIsoAlp2AndCityNameStartsWith(String country, String input);
}