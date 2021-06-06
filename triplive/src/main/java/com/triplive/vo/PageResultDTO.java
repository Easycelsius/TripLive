package com.triplive.vo;

import java.util.List;

import lombok.Data;

@Data
public class PageResultDTO {

    // 값 내용
    private List<?> list;

    // 총 페이지 번호
    private int totalPage;

    //현재 페이지 번호
    private int page;

    //목록 사이즈
    private int size;

    //시작 페이지 번호, 끝 페이지 번호
    private int start, end;

    //이전, 다음
    private  boolean prev, next;

    // 페이지 번호 목록
    private List<Integer> pageList;

    

}

