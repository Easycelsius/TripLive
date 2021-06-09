package com.triplive.entity;
// 외교부 국가별 사건사고 유형
// 완료
import javax.persistence.*;
import lombok.*;


@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="countryaccidentservice2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class CountryAccidentService2 {
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long accidentNo;
   
    @Column(length = 50, nullable = true)
    private String countryEngNm; // 영문국가명

    @Column(length = 50, nullable = true)
    private String countryNm; // 한글 국가명
    
    @Column(length = 50, nullable = true)
    private String countryIsoAlp2; // ios두자리코드

    @Column(length = 10*3, nullable = true)
    private String continentCd; // 대륙코드

    @Column(length = 50, nullable = true)
    private String continentEngNm; // 영문대륙명

    @Column(length = 50, nullable = true)
    private String continentNm; // 한글대륙명

    @Column(length = 1000, nullable = true)
    private String dangMapDownloadUrl; // 위험지도경로

    @Column(length = 1000, nullable = true)
    private String flagDownloadUrl; // 국기다운로드경로
   
    @Column(length = 1000, nullable = true)
    private String mapDownloadRrl; // 지도다운로드경로

    @Column(columnDefinition = "TEXT", nullable = true)
    private String news; // 뉴스

    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private java.util.Date wrtdt; // 작성일자
}