package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.SemesterType;
import dev.vt.persistence.model.enums.Subject;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Table(
    name = "semester",
    uniqueConstraints = {@UniqueConstraint(columnNames = {"course_id", "semester_number"})})
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Semester extends AuditableEntity {

  @Column(name = "semester_number", nullable = false)
  private int semesterNumber;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "course_id", nullable = false)
  private Course course;


  @OneToMany(mappedBy = "semester", cascade = CascadeType.ALL, orphanRemoval = true)
  private List<SemesterSubject> semesterSubjects = new ArrayList<>();


  public void addSubject(Subject subject) {
    SemesterSubject ss = new SemesterSubject();
    ss.setSubject(subject);
    ss.setSemester(this);
    semesterSubjects.add(ss);
  }

  public void removeSubject(Subject subject) {
    semesterSubjects.removeIf(ss -> ss.getSubject() == subject);
  }
}
