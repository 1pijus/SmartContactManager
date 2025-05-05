package com.nt.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "contacts")
@Data
@NoArgsConstructor  
@AllArgsConstructor 
public class Contact {
  @Id
  @SequenceGenerator(name="gen1",sequenceName = "SEQ",initialValue = 1000,allocationSize = 1)
  @GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
  private Integer cid;

  private String name;
  private String email;
  private String phone;
  private String work;
  private String image;
  private String description;

  @ManyToOne
  @JoinColumn(name = "user_id")
  private User user;
}
