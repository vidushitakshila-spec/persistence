package dev.vt.persistence.dao;

import dev.vt.persistence.model.SemesterSubject;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SemesterSubjectRepository extends JpaRepository<SemesterSubject, Long> {
}