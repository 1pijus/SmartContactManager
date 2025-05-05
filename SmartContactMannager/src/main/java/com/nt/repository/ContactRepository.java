package com.nt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.model.Contact;
import com.nt.model.User;

public interface ContactRepository extends JpaRepository<Contact, Integer> {
  List<Contact> findByUser(User user);
}
