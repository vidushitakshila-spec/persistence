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
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Person extends AuditableEntity {

  private String fullName;

  @Enumerated(EnumType.STRING)
  private Gender gender;

  private LocalDate dob;

  @OneToOne(fetch = FetchType.LAZY)
  @JoinColumn(name= "contact_id", nullable = false)
  private Contact contact;
}
