package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.model.Contact;
import com.nt.model.User;
import com.nt.repository.ContactRepository;
@Service
public class IContactServiceMgmtImpl implements IContactServiceMgmt{
@Autowired
  private ContactRepository contactRepo;

  @Override
  public Contact saveContact(Contact contact) {
      return contactRepo.save(contact);
  }

  @Override
  public List<Contact> getContactsByUser(User user) {
      return contactRepo.findByUser(user);
  }

  @Override
  public Contact getContactById(Integer id) {
      return contactRepo.findById(id).orElse(null);
  }

  @Override
  public void deleteContact(Integer id) {
      contactRepo.deleteById(id);
  }
  
  @Override
    public void updateContact(Contact contact) {
      // TODO Auto-generated method stub
      contactRepo.save(contact);
    }
}
