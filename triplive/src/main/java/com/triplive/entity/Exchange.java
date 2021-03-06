package com.triplive.entity;
// 환율
import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="exchange") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...


public class Exchange {
    // 환율 번호
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long ec_no; 

    // 국가코드
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    
    // @ManyToOne
    // @JoinColumn(name="iso_num", referencedColumnName = "iso_num") 
    // private Long iso_num; 

    @Column(length = 30, nullable = false)
    private Long iso_num; 

    // 통화
    @Column(length = 30, nullable = false)
    private Double currency  ; 

    // 비상연락처
    @Column(length = 30, nullable = true)
    private Double cash; 
}
