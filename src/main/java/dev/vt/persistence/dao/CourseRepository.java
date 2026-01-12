package dev.vt.persistence.dao;

import dev.vt.persistence.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Long> {
}