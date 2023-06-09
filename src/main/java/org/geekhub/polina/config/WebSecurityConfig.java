package org.geekhub.polina.config;


import org.geekhub.polina.service.MyUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/css/**", "/js/**","/images/**").permitAll()
                .antMatchers("/admin").hasRole("ADMIN")
                .antMatchers("/products_admin").hasRole("ADMIN")
                .antMatchers("/users_admin").hasRole("ADMIN")
                .antMatchers("/user").hasAnyRole("ADMIN", "USER")
                .antMatchers("/", "/search").permitAll()
                .antMatchers("/register").permitAll()
                .anyRequest().permitAll()
                .and()
                .formLogin()
                .and()
                .logout().logoutSuccessUrl("/login?logout")
                .permitAll();
    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery("select username, password,enabled "
                        + "from users "
                        + "where username = ?"
                )
                .authoritiesByUsernameQuery("select username,authority "
                +"from authorities "
                +"where username = ?");

    }

    @Autowired
    private MyUserDetailsService detailsService;
//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.userDetailsService(detailsService).passwordEncoder(passwordEncoder());
//    }


    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }
}











