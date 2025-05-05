package com.nt.service;

import java.util.List;

import com.nt.model.Contact;
import com.nt.model.User;

public interface IContactServiceMgmt {
  Contact saveContact(Contact contact);
  List<Contact> getContactsByUser(User user);
  Contact getContactById(Integer id);
  void deleteContact(Integer id);
  void updateContact(Contact contact);
}
