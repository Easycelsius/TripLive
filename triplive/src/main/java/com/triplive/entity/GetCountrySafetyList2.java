package com.triplive.entity;
// 외교부 국가별 안전공지
//완료
import javax.persistence.*;
import lombok.*;


@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="getcountrysafetylist2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetCountrySafetyList2 {
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 50, nullable = true)
    private String countryEngNm; // 영문국가명

    @Column(length = 50, nullable = true)
    private String countryNm; // 한글 국가명

    @Column(length = 50, nullable = true)
    private String countryIsoAlp2; // 한글 국가명
 
    // @ManyToOne
    // @JoinColumn(name="iso_alp2")
    // private Country country; // iso 두자리코드

    @Column(length = 30, nullable = true)
    private String continentCd; // 대륙코드

    @Column(length = 50, nullable = true)
    private String continentEngNm; // 영문대륙명
    
    @ManyToOne
    @JoinColumn(name="iso_num")
    private Country country; // 국가
    
    @Column(length = 50, nullable = true)
    private String continentNm; // 한글대륙명

    @Column(length = 1000, nullable = true)
    private String fileDownloadUrl; // 파일 다운로드  url

    @Id
    private String sftyNoticeId; // 안전정보id
    
    @Column(columnDefinition = "TEXT", nullable = true)
    private String title; // 제목

    @Column(columnDefinition = "LONGTEXT", nullable = true)
    private String txtOriginCn; // 원본택스트내용

    @Column(length = 1000, nullable = true)
    private String filePath; // 파일 경로 

    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private java.util.Date wrtDt; // 작성일 


}