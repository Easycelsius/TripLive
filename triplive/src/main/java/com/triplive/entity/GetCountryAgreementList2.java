package com.triplive.entity;
// 외교부 국가별 주요 협정 정보

import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="getcountryagreementlist2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetCountryAgreementList2 {

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 50, nullable = true)
    private String country_eng_nm; // 귝가영문명

    @Column(length = 50, nullable = true)
    private String country_nm; // 국가명
    
    @Id
    @Column(length = 10*3, nullable = true)
    private String country_iso_alp2; // iso 2자리 숫자코드 

    @Column(length = 10*3, nullable = true)
    private String agreement_month; // 협정월

    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private java.util.Date agreement_year; // 협정년

    @Column(columnDefinition = "TEXT", nullable = true)
    private String agreement_nm; // 협정명
}