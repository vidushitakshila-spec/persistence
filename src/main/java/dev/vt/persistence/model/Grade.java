package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Grade  extends AuditableEntity{


  @OneToOne
  @JoinColumn(name = "course_id") // uni -directional
  private Course course;

  @Enumerated(EnumType.STRING)
  private dev.vt.persistence.model.enums.Grade grade;
}
