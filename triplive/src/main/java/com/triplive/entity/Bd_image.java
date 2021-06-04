package com.triplive.entity;

// 이미지

import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="bd_image") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...
public class Bd_image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long img_no; // 댓글 고유 번호
    
    @ManyToOne
    @JoinColumn(name = "bd_no")
    private Community community;
    
    @Column(length = 300*3, nullable = false)
    private String bd_image;

    

}
