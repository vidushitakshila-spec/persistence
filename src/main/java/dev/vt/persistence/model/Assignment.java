package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Subject;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;


import java.time.LocalDate;

@Entity
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Assignment extends AuditableEntity{

  private String title;
  private String description;

  private LocalDate dueDate;
  private int maxMarks;

  @Enumerated(EnumType.STRING)
  private Subject subject;

/*  @ManyToOne
  private Course course;

  @ManyToOne
  private Semester semester;*/

}
