package org.geekhub.polina.dao.impl;

import org.geekhub.polina.dao.UserDao;
import org.geekhub.polina.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UserDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void save(User user) {
        String sql = "INSERT INTO users (username, password, enabled) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.isEnabled());
    }

    @Override
    public void registerUser(User user) {
        String insertUserSql = "INSERT INTO users (username, password, enabled) VALUES (?, ?, ?)";
        jdbcTemplate.update(insertUserSql, user.getUsername(), user.getPassword(), user.isEnabled());

        String insertRoleSql = "INSERT INTO authorities (username, authority) VALUES (?, ?)";
        jdbcTemplate.update(insertRoleSql, user.getUsername(), "ROLE_USER");
    }
}
