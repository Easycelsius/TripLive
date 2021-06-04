package com.triplive.entity;
// 외교부 국가별 입국허가요건
// 완료
import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="getentrancevisalist2") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class GetEntranceVisaList2 {
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 50, nullable = false)
    private String id; // 입국허가요건id

    @Column(length = 50, nullable = false)
    private String country_eng_nm; // 귝가영문명

    @Column(length = 50, nullable = false)
    private String country_nm; // 국가명
    
    @Id
    private String country_iso_alp2; // iso 숫자코드 

    @Column(length = 10*3, nullable = false)
    private String have_yn; // 여권소지여부
    
    @Column(length = 10*3, nullable = false)
    private String gnrl_pspt_visa_yn; // 일반여권 입국허가 요건 여부
    @Column(columnDefinition = "TEXT", nullable = true)
    private String gnrl_pspt_visa_cn; // // 일반여권 입국허가 요건 내용

    @Column(length = 10*3, nullable = false)
    private String ofclpspt_visa_yn; // 관용여권 입국허가 요건 여부
    @Column(columnDefinition = "TEXT", nullable = true)
    private String ofclpspt_visa_cn; // 관용 입국허가 요건 내용

    @Column(length = 10*3, nullable = false)
    private String dplmt_pspt_visa_yn; // 외교관여권 입국허가 요건 여부
    @Column(columnDefinition = "TEXT", nullable = true)
    private String dplmt_pspt_visa_cn; // 외교관여권 입국허가 요건 내용

    @Column(columnDefinition = "TEXT", nullable = true)
    private String nvisa_entry_evdc_cn; // 무비자입국근거내용
    @Column(columnDefinition = "TEXT", nullable = true)
    private String remark; // 비고
}