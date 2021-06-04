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
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long banno;
   
    @Column(length = 50, nullable = true)
    private String id; // 고유값

    @Column(length = 50, nullable = true)
    private String countryname; // 국가명
    
    @Column(columnDefinition = "TEXT", nullable = true)
    private String banpartial; // // 여행금지(일부)

    @Column(length = 1000, nullable = true)
    private String imgurl2; // 여행위험지도경로

    
    @Column(length = 10*3, nullable = true)
    private String isocode; // iso국가코드

    @Column(length = 50, nullable = true)
    private String continent; // 대륙

    @Column(columnDefinition = "TEXT", nullable = true)
    private String ban; // // 여행금지

    @Column(length = 50, nullable = true)
    private String countryenname; // 영문국가명
   
    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private java.util.Date wrtdt; // 등록일

    @Column(length = 1000, nullable = true)
    private String imgurl; // 국기이미지경로

    @Column(columnDefinition = "TEXT", nullable = true)
    private String bannote; // // 여행금지내용






}