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
@Table(name="getcountrycodelist2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetCountryCodeList2 {//국가별_표준코드
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    private Long ID;//국가코드ID

    @Column(length = 50*3, nullable = true)
    private String country_nm; // 한글국가명

    @Column(length = 50*3, nullable = true)
    private String country_eng_nm; // 영문국가명

    @Column(length = 30, nullable = true)
    private String iso_num; // ISO 숫자코드

    @Column(length = 30, nullable = true)
    private String iso_alp2; // ISO 2자리코드

    @Column(length = 30, nullable = true)
    private String iso_alp3; // ISO 3자리코드

}
