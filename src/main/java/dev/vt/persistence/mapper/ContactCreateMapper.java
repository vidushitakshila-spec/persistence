package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.response.ContactDto;
import dev.vt.persistence.model.Address;
import dev.vt.persistence.model.Contact;
import dev.vt.persistence.model.Phone;

import java.util.function.Function;

public class ContactCreateMapper {   //dto to entity
    private ContactCreateMapper() {}
  public static final Function<ContactDto, Contact> contactToEntity =
          dto -> Contact.builder()
                  .email(dto.email())
                  .phone(
                          Phone.builder()
                                  .phone(dto.phone().toString())
                                  .build()
                        )
                  .address(
                          Address.builder()
                                  .addressLineOne(dto.address().addressLineOne())
                                  .addressLineTwo(dto.address().addressLineTwo())
                                  .city(dto.address().city())
                                  .state(dto.address().state())
                                  .zipcode(dto.address().zipcode())
                                  .build()
                          )
                  .build();




}
