package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.util.List;


@Entity
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)

public class Student extends Person{

  @OneToMany
  @JoinColumn(name = "course_id") //uni-directional
  private List<Course> courses;
}
