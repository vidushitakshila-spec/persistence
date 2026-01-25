package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;


@Entity
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Grade  extends AuditableEntity{


  @OneToOne
  @JoinColumn(name = "course_id") // uni -directional
  private Course course;

  @Enumerated(EnumType.STRING)
  private dev.vt.persistence.model.enums.Grade grade;
}
