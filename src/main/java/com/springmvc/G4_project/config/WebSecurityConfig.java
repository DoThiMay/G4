package com.springmvc.G4_project.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private DataSource dataSource;

    @Bean
    public UserDetailsService userDetailsService() {
        return new CustomUserDetailsService();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());

        return authProvider;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.headers().frameOptions().sameOrigin().and().authorizeRequests()
                .antMatchers("/", "/trang-chu/dangky", "/search", "/lienhe").permitAll()
                .antMatchers("/upload", "/hello", "trang-chu", "/manageDocument").hasAnyAuthority("ADMIN")
                .anyRequest().authenticated().and().formLogin().loginPage("/dangnhap").permitAll()
                .defaultSuccessUrl("/", true).failureUrl("/dangnhap?success=fail")
                .loginProcessingUrl("/j_spring_security_check")
        .and()
        .logout()
            .logoutUrl("/logout") // Log out URL
            .logoutSuccessUrl("/dangnhap?logout") // Redirect after successful logout
            .invalidateHttpSession(true) // Invalidate the session
            .clearAuthentication(true) // Clear authentication
        .and()
        .csrf().disable();
        http.csrf().disable(); // sửa lỗi /upload
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }
}
