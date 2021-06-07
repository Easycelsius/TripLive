package com.triplive.entity;
// 긴급속보
import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="calamity") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...


public class Calamity {
    // 속보 번호
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long calNo; 

    
    @ManyToOne
    @JoinColumn(name="iso_num") 
    private Country country; 

    // 재난유형
    @Column(length = 10*3, nullable = false)
    private String calType; 

    // 재난발생일
    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date calDate; 
    
    // 재난내용
    @Column(length = 10*3, nullable = false)
    private String calContent; 

    // 비상연락처
    @Column(length = 10*3, nullable = true)
    private String emContact; 
}
