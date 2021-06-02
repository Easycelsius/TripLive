package com.triplive.entity;
// 긴급속보
import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="clamity") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...


public class Calamity {
    // 속보 번호
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long cal_no; 

    // 국가코드
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    
    // @ManyToOne
    // @JoinColumn(name="iso_num", referencedColumnName = "iso_num") 
    // private Long iso_num; 

    @Column(length = 30, nullable = false)
    private Long iso_num; 

    // 재난유형
    @Column(length = 10*3, nullable = false)
    private String cal_type; 

    // 재난발생일
    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date cal_date; 
    
    // 재난내용
    @Column(length = 10*3, nullable = false)
    private String cal_content; 

    // 비상연락처
    @Column(length = 10*3, nullable = true)
    private String em_contact; 
}
