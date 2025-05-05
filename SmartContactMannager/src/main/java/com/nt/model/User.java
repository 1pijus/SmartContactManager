package com.nt.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "users_contact")
@Data
@NoArgsConstructor 
@AllArgsConstructor

public class User {
  @Id
  @SequenceGenerator(name="gen1",sequenceName = "CID_SEQ",initialValue = 1000,allocationSize = 1)
  @GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
  private Integer id;

  private String name;
  private String email;
  private String password;
  private String role;
  private String imageUrl;
  private boolean enabled;
  
  @CreationTimestamp
  private LocalDate createdDate;

  @OneToMany(cascade = CascadeType.ALL, mappedBy = "user", orphanRemoval = true)
  private List<Contact> contacts = new ArrayList<>();

}
