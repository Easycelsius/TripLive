package com.triplive.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter
{

	// 출처 : https://velog.io/@hellozin/Spring-Security-Form-Login-%EA%B0%84%EB%8B%A8-%EC%82%AC%EC%9A%A9-%EC%84%A4%EB%AA%85%EC%84%9C-f2jzojj8bj
	@Override
	public void configure(WebSecurity web) throws Exception
	{
		// 예를들어 이런식으로 인증할것들을 풀어주는겁니다. (주로 리소스)
		web.ignoring().antMatchers("/css/**", "/script/**", "/index.do", "/");
		web.ignoring().antMatchers("/fonts/**", "/images/**", "/img/**", "/js/**", "/plugins/**", "/styles/**", "/logo/**");
	}

	@Override
    protected void configure(HttpSecurity http) throws Exception {

		// 앞에 선언한 것이 먼저 적용됨
        http
			.authorizeRequests()
				// .antMatchers("/**").permitAll() // 전부 열어두기
				.antMatchers("/calamity/**").permitAll()
				.antMatchers("/community/write.do").hasRole("MEMBER") // 글 남기기 페이지는 로그인 요청
				.antMatchers("/community/**").permitAll()
				.antMatchers("/tripinfo/**").permitAll()
				.antMatchers("/user/**").permitAll()
				.antMatchers("/worldweather/**").permitAll()
				.antMatchers("/admin").hasRole("ADMIN")
				.anyRequest().authenticated() // 그 외는 전부 권한 필요
				.and()
			.formLogin()
				.loginPage("/user/login_resist_form.do") // 로그인 페이지 호출
				.loginProcessingUrl("user/login.do") // 실제 로그인을 진행
				.defaultSuccessUrl("/index.do") // 로그인 성공시 보여주는 페이지
				.permitAll()
				.and()
			.logout();
    }
}
