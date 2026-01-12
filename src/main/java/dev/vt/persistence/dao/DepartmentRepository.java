package dev.vt.persistence.dao;

import dev.vt.persistence.model.Department;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepository extends JpaRepository<Department, Long> {
}