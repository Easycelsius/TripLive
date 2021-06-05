package com.triplive.entity;

// 댓글 완료

import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="comment") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...
public class Comment {
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private String cm_no; // 댓글 고유 번호

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @ManyToOne
    @JoinColumn(name="bd_no")
    private Community community;

    @ManyToOne
    @JoinColumn(name="id")
    private User user; // 작성자 id

    @Column(columnDefinition = "TEXT", nullable = true)
    private String cm_content; // 댓글 내용

    @Column
    @Temporal(TemporalType.DATE)
    private java.util.Date cm_date; // 작성일자
}
