package com.triplive.entity;
// 외교부 국가별 현지연락처 

import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="getlocalcontactlist2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...


public class GetLocalContactList2 {
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 50, nullable = true)
    private String country_eng_nm; // 영문국가명

    @Column(length = 50, nullable = true)
    private String country_nm; // 한글 국가명
    
    @Id
    @Column(length = 10*3, nullable = true)
    private String country_iso_alp2; // ios두자리코드

    @Column(length = 10*3, nullable = true)
    private String continent_cd; // 대륙코드

    @Column(length = 50, nullable = true)
    private String continent_eng_nm; // 영문대륙명

    @Column(length = 50, nullable = true)
    private String continent_nm; // 한글대륙명

    @Column(length = 50, nullable = true)
    private String contact_remark; // 현지연락처정보

    @Column(length = 1000, nullable = true)
    private String dang_map_download_url; // 위험지도다운로드url

    @Column(length = 1000, nullable = true)
    private String flag_download_url; // 국기다운로드경로

    @Column(length = 1000, nullable = true)
    private String map_download_url; // 지도다운로드경로

    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private java.util.Date wrt_dt; // 작성일자

}