package dev.vt.persistence.controller;

import dev.vt.persistence.dto.request.RegisterUserDto;
import dev.vt.persistence.dto.response.PersonDto;
import dev.vt.persistence.dto.response.RegisterResponseDto;
import dev.vt.persistence.service.PersonService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/person")
@Tag(name = "Person APIs")
@RequiredArgsConstructor
public class PersonController {

  private final PersonService personService;

  @Operation(summary = "Register a new user")
  @ApiResponses({
    @ApiResponse(responseCode = "200", description = "User registered successfully"),
    @ApiResponse(responseCode = "400", description = "Invalid input"),
    @ApiResponse(responseCode = "409", description = "User already exists")
  })
  @PostMapping("/register")
  public ResponseEntity<RegisterResponseDto> register(
      @RequestBody RegisterUserDto registerRequestDto) {
    return ResponseEntity.ok(personService.register(registerRequestDto));
  }

  @Operation(summary = "Get a person details")
  @ApiResponses({
    @ApiResponse(responseCode = "200", description = "User registered successfully"),
    @ApiResponse(responseCode = "400", description = "Invalid input"),
  })
  @GetMapping("/details")
  public ResponseEntity<PersonDto> getPersonDetails(@RequestParam String name) {
    return ResponseEntity.ok(personService.getPersonDtls(name));
  }
}
