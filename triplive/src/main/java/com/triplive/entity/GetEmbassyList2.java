package com.triplive.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="getEmbassyList2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor  // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetEmbassyList2 {//외교부_재외공관정보
    @Column(length = 30, nullable = true)
    private String embassy_manage_ty_cd_nm; // 재외공관 관리유형코드명

    @Column(length = 30, nullable = true)
    private String embassy_cd; // 재외공관코드

    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private String country_iso_alp2; // ISO 2자리코드

    @Column(length = 30, nullable = true)
    private String embassy_lat; // 재외공관위도

    @Column(length = 30, nullable = true)
    private String embassy_lng; // 재외공관경도

    @Column(length = 30, nullable = true)
    private String embassy_manage_ty_cd; // 재외공관 관리유형코드

    @Column(length = 50, nullable = true)
    private String embassy_kor_nm; // 재외공관한글명

    @Column(length = 50, nullable = true)
    private String center_tel_no; // 영사관번호

    @Column(length = 50, nullable = true)
    private String free_tel_no; // 무료전화번호

    @Column(length = 50, nullable = true)
    private String country_eng_nm; // 영문국가명

    @Column(length = 30, nullable = true)
    private String embassy_ty_cd_nm; // 재외공관유형코드명

    @Column(length = 50, nullable = true)
    private String manageTyNm; // 관리유형명

    @Column(length = 30, nullable = true)
    private String embassy_ty_cd; // 재외공관유형코드

    @Column(length = 50, nullable = true)
    private String tel_no; // 대표전화번호

    @Column(length = 50, nullable = true)
    private String urgency_tel_no; // 긴급전화번호

    @Column(length = 50, nullable = true)
    private String country_nm; // 국가명
    
    @Column(columnDefinition = "TEXT", nullable = true)
    private String embassy_addr; // 재외공관주소
    
    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date embassy_install_dt; // 재외공관설치일

}
