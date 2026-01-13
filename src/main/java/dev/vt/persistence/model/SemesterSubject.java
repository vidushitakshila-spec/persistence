package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Subject;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class SemesterSubject extends AuditableEntity {

  @Enumerated(EnumType.STRING)
  @Column(name = "subject")
  private Subject subject;

  @Column(name = "credits")
  private int credits;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "semester_id", nullable = false)
  private Semester semester;
}
