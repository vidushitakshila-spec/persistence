package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Gender;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.time.LocalDate;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
@Inheritance(strategy = InheritanceType.JOINED)
public class Person extends AuditableEntity {

  @Column(name ="full_name")
  private String fullName;

  @Enumerated(EnumType.STRING)
  @Column(name ="gender")
  private Gender gender;

  @Column(name ="dob")
  private LocalDate dob;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name= "contact_id")
  private Contact contact;
}
