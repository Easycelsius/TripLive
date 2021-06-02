package com.triplive.entity;
// 외교부 여행금지제도
import javax.persistence.*;
import lombok.*;


@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="gettravelbanlist") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetTravelBanList {
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 50, nullable = true)
    private String id; // 고유값

    @Column(length = 50, nullable = true)
    private String countryName; // 국가명
    
    @Column(columnDefinition = "TEXT", nullable = true)
    private String banPartial; // // 여행금지(일부)

    @Column(length = 1000, nullable = true)
    private String imgUrl2; // 여행위험지도경로

    @Id
    @Column(length = 10*3, nullable = true)
    private String isoCode; // iso국가코드

    @Column(length = 50, nullable = true)
    private String continent; // 대륙

    @Column(columnDefinition = "TEXT", nullable = true)
    private String ban; // // 여행금지

    @Column(length = 50, nullable = true)
    private String countryEngName; // 영문국가명
   
    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private java.util.Date wrtDt; // 등록일

    @Column(length = 1000, nullable = true)
    private String imgUrl; // 국기이미지경로

    @Column(columnDefinition = "TEXT", nullable = true)
    private String banNote; // // 여행금지내용






}