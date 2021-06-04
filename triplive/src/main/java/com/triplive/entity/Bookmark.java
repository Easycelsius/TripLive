package com.triplive.entity;

import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="bookmark") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class Bookmark {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long bm_no; // 북마크 번호
    
    @ManyToOne
    @JoinColumn(name="bd_no")
    private Community community;
    
    @ManyToOne
    @JoinColumn(name="id")
    private User user;
    
}
