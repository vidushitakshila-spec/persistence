package dev.vt.persistence.dao;

import dev.vt.persistence.model.AssignmentFile;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AssignmentFileRepository extends JpaRepository<AssignmentFile, Long> {
}