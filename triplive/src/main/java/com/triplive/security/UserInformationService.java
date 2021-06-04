// package com.triplive.security;

// import java.util.ArrayList;
// import java.util.List;
// import java.util.Optional;

// import javax.annotation.Resource;

// import com.triplive.entity.User;
// import com.triplive.repository.UserRepository;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;
// import org.springframework.security.core.GrantedAuthority;
// import org.springframework.security.core.authority.SimpleGrantedAuthority;
// import org.springframework.security.core.userdetails.UserDetails;
// import org.springframework.security.core.userdetails.UserDetailsService;
// import org.springframework.security.core.userdetails.UsernameNotFoundException;
// import org.springframework.stereotype.Service;

// @Service ("UserInformationService")
// public class UserInformationService implements UserDetailsService {

//     @Resource (name="UserRepository")
//     private UserRepository UserDao;

//     private static final Logger logger = LoggerFactory.getLogger(CustomAuthenticationProvider.class);

//     @Override
//     public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

//         UserInformation user  = new UserInformation();
//         try{ 
//             Optional<User> userEntity = UserDao.findById(username);
//             user.setUsername(userEntity.get().getId());
//             user.setUsername(userEntity.get().getPassword());
//             user.setAuthorities(makeGrantedAuthority(userEntity.get().getRoles()));           
//             }catch(Exception e){
//             throw new UsernameNotFoundException("wrongId"); // Email 로그인, 저장된 ID 없음
//         }
//         return user;
//     }

//     public List<GrantedAuthority> makeGrantedAuthority(List<User> roles){
//         List<GrantedAuthority> list = new ArrayList<>();
//         roles.forEach(role -> list.add(new SimpleGrantedAuthority(role.getRole())));
//         return list;
//     }
// }
