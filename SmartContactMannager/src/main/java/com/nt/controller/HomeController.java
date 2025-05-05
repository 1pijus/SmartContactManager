package com.nt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.model.Contact;
import com.nt.model.User;
import com.nt.service.IContactServiceMgmt;
import com.nt.service.IUserServiceMgmt;

import jakarta.servlet.http.HttpSession;
@Controller
public class HomeController {
  @Autowired
  private IUserServiceMgmt userService;
  @Autowired
  private IContactServiceMgmt contactService;

  @GetMapping("/login")
  public String showLoginPage() {
      return "login";
  }

  @PostMapping("/login")
  public String login(User user, Model model,HttpSession session) {
      User foundUser = userService.findUserByEmail(user.getEmail());
      if (foundUser != null && foundUser.getPassword().equals(user.getPassword())) {
        session.setAttribute("user", foundUser);
          model.addAttribute("user", foundUser);
          return "dashboard";
      } else {
          model.addAttribute("error", "Invalid login credentials");
          return "login";
      }
  }

  @GetMapping("/register")
  public String showRegistrationPage(Model model) {
      model.addAttribute("user", new User()); // Add the 'user' object to the model
      return "register";  // Return the view for the registration page
  }

  @PostMapping("/register")
  public String registerUser(@ModelAttribute("user") User user, Model model) {
      User existingUser = userService.findUserByEmail(user.getEmail());
      if (existingUser != null) {
          model.addAttribute("error", "User already exists!");
          return "register";
      }
      userService.saveUser(user);
      return "redirect:/login";
  }

  
  
  
  @GetMapping("/add")
  public String showAddContactPage(Model model) {
    model.addAttribute("contact", new Contact()); 
      return "add_contact";
  }

  @PostMapping("/add")
  public String addContact(@ModelAttribute Contact contact, HttpSession session) {
      User user = (User) session.getAttribute("user");
      contact.setUser(user);
      contactService.saveContact(contact);
      return "redirect:list";
  }

  @GetMapping("/list")
  public String showContactsList(Model model, HttpSession session) {
      User user = (User) session.getAttribute("user");
      model.addAttribute("contacts", contactService.getContactsByUser(user));
      return "contacts_list";
  }

  @GetMapping("/delete/{id}")
  public String deleteContact(@PathVariable("id") Integer id, HttpSession session) {
      User user = (User) session.getAttribute("user");
      Contact contact = contactService.getContactById(id);
      
      // Only allow delete if the logged-in user owns the contact
      if (contact != null && contact.getUser().getId().equals(user.getId())) {
          contactService.deleteContact(id);
      }
      return "redirect:/list";
  }

  
  @GetMapping("/profile")
  public String showProfile(HttpSession session, Model model) {
      User user = (User) session.getAttribute("user");
      if (user == null) {
          return "redirect:/login"; // or your login page
      }
      model.addAttribute("user", user);
      return "profile"; // profile.jsp
  }

  @GetMapping("/logout")
  public String logout(HttpSession session) {
      session.invalidate(); 
      return "redirect:/login?logout"; 
  }
  
  @GetMapping("/edit/{id}")
  public String showEditContactForm(@PathVariable("id") Integer id, Model model, HttpSession session) {
      User user = (User) session.getAttribute("user");
      Contact contact = contactService.getContactById(id);
      
      // Only allow if user owns the contact
      if (contact != null && contact.getUser().getId().equals(user.getId())) {
          model.addAttribute("contact", contact);
          return "edit_contact"; // JSP to be created
      }
      return "redirect:/list";
  }

  @PostMapping("/update")
  public String updateContact(@ModelAttribute Contact contact, HttpSession session) {
      User user = (User) session.getAttribute("user");
      contact.setUser(user); // ensure ownership
      contactService.updateContact(contact); // this must be implemented
      return "redirect:/list";
  }
  
  
}
