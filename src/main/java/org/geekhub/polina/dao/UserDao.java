package org.geekhub.polina.dao;

import org.geekhub.polina.model.User;

public interface UserDao {
    void save(User user);
    void registerUser(User user);
}
