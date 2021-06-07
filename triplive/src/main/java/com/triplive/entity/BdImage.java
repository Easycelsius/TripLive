package com.triplive.entity;

// 이미지

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="bd_image") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...
public class BdImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID값 자동으로 지정
    private Long imgNo; // 댓글 고유 번호
    
    @ManyToOne
    @JoinColumn(name = "bdNo")
    private Community community;
    
    @Column(columnDefinition = "TEXT", nullable = true)
    private String bdImage;

    // 원본 파일이름 과 서버에 저장된 파일 경로 를 분리한 이유?
    // 동일한 이름을 가진 파일이 업로드가 된다면 오류가 생긴다.
    // 이를 해결하기 위함
    @NotEmpty
    private String originalFileName;

    @NotEmpty
    private String storedFilePath;

    private long fileSize;

}
