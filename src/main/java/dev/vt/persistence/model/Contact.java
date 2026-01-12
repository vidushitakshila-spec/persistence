package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Contact extends AuditableEntity{

  @Embedded
  private Phone phone;

  @Column(nullable = false,unique = true)
  private String email;

   @OneToOne(fetch = FetchType.LAZY) //Uni-directional
   @JoinColumn(name ="address_id",nullable = false)
  private Address address;

/*  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name= "contact_id")
  private Contact contact;*/

}
