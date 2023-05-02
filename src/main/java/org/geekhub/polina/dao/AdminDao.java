package org.geekhub.polina.dao;

import org.geekhub.polina.model.User;

import java.util.List;

public interface AdminDao {
    List<User> findAll();
    User findByUsername(String username);
}
