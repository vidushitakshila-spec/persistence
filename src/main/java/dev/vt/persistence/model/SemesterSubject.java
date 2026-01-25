package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Subject;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
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
