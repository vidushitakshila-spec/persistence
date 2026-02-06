package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.request.StudentCreateRequest;
import dev.vt.persistence.dto.response.PersonDto;
import dev.vt.persistence.dto.response.StudentResponseDto;
import dev.vt.persistence.model.Student;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface StudentMapper {

  @Mapping(source = "Person", target = "person")
  StudentResponseDto toDto(Student student);

  PersonDto toPersonDto(Student student);

  Student toEntity(StudentCreateRequest studentCreateRequest);
}
