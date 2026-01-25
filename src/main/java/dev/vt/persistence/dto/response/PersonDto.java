package dev.vt.persistence.dto.response;

import dev.vt.persistence.model.enums.Gender;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

import java.io.Serializable;
import java.time.LocalDate;

public record PersonDto(@NotBlank(message = "FullName is required") String fullName,
                        @NotBlank(message = "Gender is required")
                        @Pattern(
                                regexp = "MALE|FEMALE|OTHER",
                                message = "Gender"
                        )Gender gender,
                        @NotBlank(message = "Gender is required")
                        @Pattern(
                                regexp = "^\\d{2}/\\d{2}/\\d{4}$",
                                message = "Date is required"
                        )
                        LocalDate dob,
                        @NotBlank(message = "Contact is required")
                        ContactDto contact
                       // UserAuthDto userAuth
                        ) implements Serializable {


}