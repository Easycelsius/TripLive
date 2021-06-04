package com.triplive.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="country") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor  // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...

public class Country {
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정 //DB에 Primary Key가 없더라도 Entity에서 강제로 하나는 지정해줘야함
    private Long iso_num;//국가코드

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 30*3, nullable = false)
    private String ct_kname; // 국가명

    @Column(length = 30*3, nullable = false)
    private String ct_ename; // 국가명(영문)

    @Column(length = 30*3, nullable = false)
    private String iso_alp2; // ISO 2자리코드

    @Column(length = 30*3, nullable = false)
    private String iso_alp3; // ISO 3자리코드
    
}
