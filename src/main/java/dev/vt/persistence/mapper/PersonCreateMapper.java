package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.request.RegisterUserDto;
import dev.vt.persistence.model.Person;
import dev.vt.persistence.model.enums.Gender;
import dev.vt.persistence.model.enums.Role;

import java.util.function.Function;

public class PersonCreateMapper {  // DTO → Entity

  private PersonCreateMapper() {}

  public static final Function<RegisterUserDto, Person> toEntity =
      dto ->
              Person.builder()
              .fullName(dto.fullName())
              .role(toRole(dto.role()))
              .gender(Gender.from(dto.gender()))
              .dob(dto.dob())
              .contact(ContactCreateMapper.contactToEntity.apply(dto.contact()))
              .build();

  public static Role toRole(String role) {
    return Role.valueOf(role.toUpperCase());
  }
}
