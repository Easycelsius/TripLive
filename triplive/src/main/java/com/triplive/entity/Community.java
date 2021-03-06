package com.triplive.entity;
// 커뮤니티
import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="community") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class Community {
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @Column(name="bd_no")
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long bdNo;

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @ManyToOne
    @JoinColumn(name="id")
    private User user; // 작성자

    @Column(length = 50*3, nullable = false)
    private String bdTitle; // 글제목

    @Column(columnDefinition = "TEXT", nullable = false)
    private String bdContent; // 글내용

    @ManyToOne
    @JoinColumn(name="iso_num")
    private Country country; // 국가
    
    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date date; // 작성일자
    
    @Column(length = 200*3, nullable = false)
    private long count; // 조회수
    
}
