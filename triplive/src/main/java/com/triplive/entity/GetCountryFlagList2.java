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
@Table(name="getcountryflaglist2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetCountryFlagList2 {//국가별_국기이미지
    @Column(length = 50*3, nullable = true)
    private String country_eng_nm; // 영문국가명

    @Column(length = 50*3, nullable = true)
    private String country_nm; // 한글국가명

    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    private String country_iso_alp2; // ISO 2자리코드

    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date written_year; // 작성년도

    @Column(length = 1000, nullable = true)
    private String download_url; // 다운로드url

    @Column(length = 1000, nullable = true)
    private String origin_file_nm; // 원본파일명
}
