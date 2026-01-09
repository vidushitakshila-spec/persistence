package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;


@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Student extends Person{

  @OneToMany
  @JoinColumn(name = "course_id") //uni-directional
  private List<Course> courses;
}
