package com.nt.service;

import com.nt.model.User;

public interface IUserServiceMgmt {
  User saveUser(User user);
  User findUserByEmail(String email);
}
