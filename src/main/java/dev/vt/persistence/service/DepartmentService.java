package dev.vt.persistence.service;

import dev.vt.persistence.dao.DepartmentRepository;
import dev.vt.persistence.dto.response.DepartmentResponseDto;
import dev.vt.persistence.mapper.DepartmentMapper;
import dev.vt.persistence.model.Department;
import dev.vt.persistence.model.enums.DepartmentType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

// @RequiredArgsConstructor
@Service
public class DepartmentService {
  @Autowired private DepartmentRepository departmentRepository;
  @Autowired private DepartmentMapper departmentMapper;

  public DepartmentResponseDto getDepartmentDtls(String name) {
    Optional<Department> department =
        departmentRepository.findByDepartment(DepartmentType.valueOf(name));
    if (department.isPresent()) {
      DepartmentResponseDto departmentResponseDto =
          departmentMapper.toResponseDto(department.get());
      return departmentResponseDto;
    }
    return null;
  }
}
