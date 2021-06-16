package com.triplive.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name="getcountrysafetynewslistnew") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor  // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetCountrySafetyNewsListNew {//국가별_최신안전소식(코로나)
    @Column(length = 30, nullable = true)
    private String continentCd;//대륙코드

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 50*3, nullable = true)
    private String continentEngNm; // 영문대륙명
    
    @ManyToOne
    @JoinColumn(name="iso_num")
    private Country country; // 국가
    
    @Column(length = 50*3, nullable = true)
    private String continentNm; // 한글대륙명

    @Column(length = 50*3, nullable = true)
    private String countryEngNm; // 영문국가명

    @Column(length = 30, nullable = true)
    private String countryIsoAlp2; // ISO 2자리코드

    @Column(length = 50*3, nullable = true)
    private String countryNm; // 한글국가명

    @Column(length = 1000, nullable = true)
    private String fileCnt; // 파일 개수

    @Column(length = 1000, nullable = true)
    private String fileDownloadUrl; // 파일다운로드 url

    @Column(length = 1000, nullable = true)
    private String filePath; // 파일경로

    @Column(columnDefinition = "TEXT", nullable = true)
    private String htmlOriginCn; // html 원본 내용

    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    private String sftyNoticeId; // 안전공지 ID

    @Column(columnDefinition = "TEXT", nullable = true)
    private String title; // 제목

    @Column(columnDefinition = "TEXT", nullable = true)
    private String txtOriginCn; // 원본내용

    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date wrtDt; // 작성일자

}
