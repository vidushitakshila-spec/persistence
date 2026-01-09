package dev.vt.persistence.model;

import dev.vt.persistence.Phone;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Contact extends AuditableEntity{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", nullable = false)
  private Long id;

  @Embedded
  private Phone phone;

  @Column(nullable = false,unique = true)
  private String email;

   @OneToOne  //Uni-directional
   //@JoinColumn(name ="address_id")
  private Address address;

}
