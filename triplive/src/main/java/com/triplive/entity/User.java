package com.triplive.entity;

// 이미지

import javax.persistence.*;
import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="user") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...
public class User {
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    private String id; // id

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 30*3, nullable = false)
    private String passowrd; // password

    @Column(length = 30*3, nullable = false)
    private String gender; // 성별

    @Column(length = 30*3, nullable = true)
    private String email; // 이메일

    @Column(length = 30*3, nullable = true)
    private String phone; // 전화번호

    @Column(length = 30*3, nullable = true)
    private String iso_num; // 성별

}
