// package com.triplive.security;

// import java.util.Collection;

// import javax.annotation.Resource;

// import org.springframework.security.authentication.AuthenticationProvider;
// import org.springframework.security.authentication.BadCredentialsException;
// import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
// import org.springframework.security.core.Authentication;
// import org.springframework.security.core.AuthenticationException;
// import org.springframework.security.core.GrantedAuthority;
// import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

// import lombok.extern.log4j.Log4j2;

// @Log4j2
// public class CustomAuthenticationProvider implements AuthenticationProvider{
//     @Resource (name="UserInformationService")
//     UserInformationService userInformationService;

//     @Override
//     public Authentication authenticate(Authentication authentication) throws AuthenticationException {
//         Collection<? extends GrantedAuthority> authorities;

//         String id = authentication.getName(); 
//         String password = (String) authentication.getCredentials(); 

//         UserInformation user = (UserInformation) userInformationService.loadUserByUsername(id);// ID 확인
//         user.getUsername();
//         authorities = user.getAuthorities();

//         log.info("AUTHORIES :: " + authorities);

//         BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

//         if(!bCryptPasswordEncoder.matches(password, user.getPassword())) // PW 확인
//         throw new BadCredentialsException("wrongPassword"); // PW 틀림

//         return new UsernamePasswordAuthenticationToken(user, user.getPassword(), authorities);
//     }

//     @Override
//     public boolean supports(Class<?> authentication) {
//         return  authentication.equals(UsernamePasswordAuthenticationToken.class);
//     }
    
// }
