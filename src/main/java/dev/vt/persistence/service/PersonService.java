package dev.vt.persistence.service;

import dev.vt.persistence.dto.request.RegisterUserDto;
import dev.vt.persistence.dto.response.PersonDto;
import dev.vt.persistence.dto.response.RegisterResponseDto;


public interface PersonService {

  public RegisterResponseDto register(RegisterUserDto registerRequestDto);

  public PersonDto getPersonDtls(String name) ;
}
