package com.triplive.controller;

import com.triplive.service.WorldWeatherServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("worldweather")
public class WorldWeatherController {
    @Autowired
    private WorldWeatherServiceImpl worldWeatherService;

    @RequestMapping("/getCityNameList.do")
    public String getCityNameList(Model model, @RequestParam(value = "country", defaultValue = "JP")  String country,  @RequestParam(value = "input", defaultValue = "A") String input) {
        log.info("getCityNameList.do 요청");

        model.addAttribute("cityList", worldWeatherService.getCityNameList(country, input));



        return "worldweather/weather";
    }

    @RequestMapping("/{step}.do")
    public String view(@PathVariable String step) {
        log.info("WorldWeather page 요청");
        return "worldweather/"+step;
    }
}