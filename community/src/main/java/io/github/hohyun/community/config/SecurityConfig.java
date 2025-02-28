package io.github.hohyun.community.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig{

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf(csrf -> csrf.disable())
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/**", "/login", "/logout").permitAll()  // 공개 페이지 (인증 불필요)
                        .anyRequest().authenticated()  // 그 외 모든 요청은 로그인 필요
                )
                .formLogin(login -> login.disable())    // 기본 로그인 폼 제거
                .httpBasic(httpBasic -> httpBasic.disable());   // 기본 인증 제거


        return http.build();
    }
}
