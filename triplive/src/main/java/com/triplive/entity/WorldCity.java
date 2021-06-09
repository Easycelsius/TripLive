package com.triplive.entity;
// 세계 도시 목록
import javax.persistence.*;
import lombok.*;


@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="worldcity") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class WorldCity {
    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @Column(name="city_no")
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long cityNo; // 도시 번호
    
    @Column(length = 30, name="iso_alp2", nullable = false)
    private String isoAlp2; // 국가 코드

    @Column(length = 1000, name="city_name", nullable = false)
    private String cityName; // 도시명
}