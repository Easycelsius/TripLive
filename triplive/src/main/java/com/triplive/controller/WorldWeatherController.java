package com.triplive.controller;

import java.util.List;
import com.triplive.service.WorldWeatherServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("worldweather")
public class WorldWeatherController {
    @Autowired
    private WorldWeatherServiceImpl worldWeatherService;

    @RequestMapping("/getCityNameList.do")
    @ResponseBody
    // 도시 목록 리스트 호출
    public List getCityNameList(@RequestParam(value = "country")  String country,  @RequestParam(value = "input") String input) {
        log.info("getCityNameList.do 요청");
        return worldWeatherService.getCityNameList(country, input);
    }

    // 페이지 이동
    @RequestMapping("/{step}.do")
    public String view(@PathVariable String step) {
        log.info("WorldWeather page 요청");
        return "worldweather/"+step;
    }
}