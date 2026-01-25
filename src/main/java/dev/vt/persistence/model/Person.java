package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Gender;
import dev.vt.persistence.model.enums.Role;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;

@Entity
@Data
@Inheritance(strategy = InheritanceType.JOINED)
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Person extends AuditableEntity {

  @Column(name ="full_name")
  private String fullName;

  @Enumerated(EnumType.STRING)
  @Column(name ="role")
  private Role role;

  @Enumerated(EnumType.STRING)
  @Column(name ="gender")
  private Gender gender;

  @Column(name ="dob")
  private LocalDate dob;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name= "contact_id")
  private Contact contact;


//  @OneToOne(mappedBy = "person", fetch = FetchType.LAZY)
//  private UserAuth userAuth;

}
