package com.nt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.model.User;
import com.nt.repository.UserRepository;
@Service
public class IUserServiceMgmtImpl implements IUserServiceMgmt{

  @Autowired
  private UserRepository userRepo;
  
  public User saveUser(User user) {
   
    return userRepo.save(user);
  }

  public User findUserByEmail(String email) {

    return userRepo.findByEmail(email);
  }



}
