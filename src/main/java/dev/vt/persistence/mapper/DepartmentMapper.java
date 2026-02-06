package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.request.DepartmentRequestDto;
import dev.vt.persistence.dto.response.DepartmentResponseDto;
import dev.vt.persistence.model.Department;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(
        componentModel = "spring",
        uses = { ContactMapper.class }
)

public interface DepartmentMapper {

  // Request DTO → Entity
  Department toEntity(DepartmentRequestDto dto);

  // Entity → Response DTO
  @Mapping(source = "contact", target = "contact")
  DepartmentResponseDto toResponseDto(Department department);
}
