package com.triplive.entity;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

// 이미지

import javax.persistence.*;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.*;

@Entity //JPA로 관리되는 어노테이션 : 테이블이나 컬럼 생성
@Table(name="user") // 테이블명 지정 + 인덱스도 설정
@ToString // lombok ToString
@Getter @Setter @Builder @AllArgsConstructor @NoArgsConstructor // lombok 의 builder를 이용해서 객체 생성 처리, builer <- Allargs... , NoArgs...
public class User implements UserDetails {
    @Id // Primary Key에 해당하는 특정 필드를 id로 지정
    private String id; // id

    // Column으로 사용하지 않는 필드의 경우 @Transient 어노테이션을 적용
    @Column(length = 30*3, nullable = false)
    private String password; // password

    @Column(length = 30*3, nullable = false)
    private String gender; // 성별

    @Column(length = 30*3, nullable = true)
    private String email; // 이메일

    @Column(length = 30*3, nullable = true)
    private String phone; // 전화번호

    @Column(length = 30*3, nullable = true)
    private Long iso_num; // 국가번호

    // 시큐리티 권한 설정
    @Column(name = "auth")
    private String auth;

    // 시큐리티 관련
    
    // 사용자의 권한을 콜렉션 형태로 반환
    // 단, 클래스 자료형은 GrantedAuthority를 구현해야함
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<GrantedAuthority> roles = new HashSet<>();
        for (String role : auth.split(",")) {
          roles.add(new SimpleGrantedAuthority(role));
        }
        return roles;
    }

    @Override
    public String getPassword(){
      return password;
    }

    @Override
    public String getUsername() {
        return id;
    }

    // 계정 만료 여부 반환
    @Override
    public boolean isAccountNonExpired() {
      // 만료되었는지 확인하는 로직
      return true; // true -> 만료되지 않았음
    }

    // 계정 잠금 여부 반환
    @Override
    public boolean isAccountNonLocked() {
      // 계정 잠금되었는지 확인하는 로직
      return true; // true -> 잠금되지 않았음
    }

    // 패스워드의 만료 여부 반환
    @Override
    public boolean isCredentialsNonExpired() {
      // 패스워드가 만료되었는지 확인하는 로직
      return true; // true -> 만료되지 않았음
    }

    // 계정 사용 가능 여부 반환
    @Override
    public boolean isEnabled() {
      // 계정이 사용 가능한지 확인하는 로직
      return true; // true -> 사용 가능
    }

}
