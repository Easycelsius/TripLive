package com.triplive.repository;

import java.util.List;

import com.triplive.entity.WorldCity;

import org.springframework.data.jpa.repository.JpaRepository;

public interface WorldWeatherRepository extends JpaRepository<WorldCity, Long> {
    List<WorldCity> findByIsoAlp2AndCityNameStartsWith(String country, String input);

}