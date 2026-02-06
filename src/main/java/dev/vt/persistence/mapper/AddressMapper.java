package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.response.AddressDto;
import dev.vt.persistence.model.Address;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AddressMapper {
  Address toEntity(AddressDto dto);

  AddressDto toDto(Address address);
}
