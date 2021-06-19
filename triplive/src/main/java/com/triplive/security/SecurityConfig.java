package com.triplive.security;

import com.triplive.service.UserServiceImpl;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity // 1
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter
{

	// 출처 : https://velog.io/@hellozin/Spring-Security-Form-Login-%EA%B0%84%EB%8B%A8-%EC%82%AC%EC%9A%A9-%EC%84%A4%EB%AA%85%EC%84%9C-f2jzojj8bj
	// 참고 : https://taes-k.github.io/2019/06/12/spring-security-2/
	// 스프링 교육 자료 : https://shinsunyoung.tistory.com/78

	private final UserServiceImpl userService;

	@Override
	public void configure(WebSecurity web) throws Exception
	{
		// 예를들어 이런식으로 인증할것들을 풀어주는겁니다. (주로 리소스)
		web.ignoring().antMatchers("/css/**", "/script/**", "favicon.ico");
		web.ignoring().antMatchers("/fonts/**", "/images/**", "/img/**", "/js/**", "/plugins/**", "/styles/**", "/logo/**");
	}

	@Override
    protected void configure(HttpSecurity http) throws Exception {

		// 앞에 선언한 것이 먼저 적용됨
        http
			.authorizeRequests()
				.antMatchers("/community/write.do").access("hasRole('MEMBER') or hasRole('ADMIN')") // 글 남기기 페이지는 로그인 요청
				.antMatchers("/user/admin.do").hasRole("ADMIN")
				.antMatchers("/**").permitAll() // 전부 열어두기
				// .antMatchers("/calamity/**").permitAll()
				// .antMatchers("/community/**").permitAll()
				// .antMatchers("/safetylist/**").permitAll()
				// .antMatchers("/user/**").permitAll()
				// .antMatchers("/worldweather/**").permitAll()
				.antMatchers("/admin").hasRole("ADMIN")
				.anyRequest().authenticated() // 그 외는 전부 권한 필요
				.and()
			.formLogin() // 로그인 관련 설정 진행
				.loginPage("/user/login_resist_form.do") // 로그인 페이지 호출
				.loginProcessingUrl("/user/login.do") // 실제 로그인을 진행
				.defaultSuccessUrl("/index.do") // 로그인 성공시 보여주는 페이지
				.usernameParameter("id")
				.passwordParameter("password")
				.permitAll()
				.and()
			.logout() // 로그아웃 관련 설정을 진행
				.logoutUrl("/user/logout.do")
				.invalidateHttpSession(true) // 로그아웃 후 세션 날리기
				.clearAuthentication(true)
                .deleteCookies("JSESSIONID", "remeber-me")
				.logoutSuccessUrl("/")
                .permitAll()
				.and()
			.rememberMe()
				.key("securitykey")
				.rememberMeCookieName("remember-me")
				.tokenValiditySeconds(60 * 10) //10분
				.and()
			.csrf().disable() // 스프링 시큐리티에서는 기본적으로 csrf와 헤더를 체크하게되어 있는데 위의 설정을 통해 체크없이 진행할수 있도록 설정해줍니다.  
				.headers().disable();
    }

@Override
  public void configure(AuthenticationManagerBuilder auth) throws Exception { // 9
    auth.userDetailsService(userService)
    	// 해당 서비스(userService)에서는 UserDetailsService를 implements해서 
        // loadUserByUsername() 구현해야함 (서비스 참고)
    	.passwordEncoder(new BCryptPasswordEncoder()); 
   }

}
