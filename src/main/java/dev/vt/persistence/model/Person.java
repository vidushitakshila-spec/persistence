package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Gender;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.time.LocalDate;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Person extends AuditableEntity {

  private String fullName;

  @Enumerated(EnumType.STRING)
  private Gender gender;

  private LocalDate dob;

  @OneToOne private Contact contact;
}
