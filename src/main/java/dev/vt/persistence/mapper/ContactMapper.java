package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.response.ContactDto;
import dev.vt.persistence.model.Contact;
import dev.vt.persistence.model.Phone;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ContactMapper {

  default Contact toEntity(ContactDto dto) {
    return dto == null ? null : ContactCreateMapper.contactToEntity.apply(dto);
  }


  ContactDto toDto(Contact contact);

  // ---- Phone conversions ----
  default Phone map(String phone) {
    if (phone == null) {
      return null;
    }
    return Phone.builder()
            .phone(phone)
            .build();
  }

  default String map(Phone phone) {
    return phone == null ? null : phone.getPhone();
  }
}
