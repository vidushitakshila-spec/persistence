package dev.vt.persistence.service.impl;

import dev.vt.persistence.dao.PersonRepository;
import dev.vt.persistence.dto.request.RegisterUserDto;
import dev.vt.persistence.dto.response.PersonDto;
import dev.vt.persistence.dto.response.RegisterResponseDto;
import dev.vt.persistence.mapper.PersonReadMapper;
import dev.vt.persistence.model.Person;
import dev.vt.persistence.service.PersonService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PersonServiceImpl implements PersonService {

  private final PersonRepository personRepository;
  private final PersonReadMapper personReadMapper;

  @Override
  public RegisterResponseDto register(RegisterUserDto registerRequestDto) {

    return null;
  }

  @Override
  public PersonDto getPersonDtls(String name) {
    /*
    PhoneDto phoneDto = new PhoneDto("123456789");
    AddressDto addressDto = new AddressDto("abc abc ","pqr pqr","San Mateo", US_States.CA,"94044");
    ContactDto contactDto = new ContactDto("123456789","abc@gmail.com",addressDto);
    PersonDto personDto = new PersonDto("Test Test", Gender.valueOf("MALE"), LocalDate.of(1993,03,28),contactDto);*/
    if (StringUtils.isNotEmpty(name)) {
      Optional<Person> personOptional = null;
      personOptional = personRepository.findByFullName(name);
      if (personOptional.isPresent()) {
        Person person = personOptional.get();
        return personReadMapper.toDto(person);
      }
    }
    return null;
  }
}
