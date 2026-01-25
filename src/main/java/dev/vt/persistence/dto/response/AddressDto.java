package dev.vt.persistence.dto.response;

import dev.vt.persistence.model.enums.US_States;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.io.Serializable;

/**
 * A DTO for the {@link dev.vt.persistence.model.Address} entity
 */

public record AddressDto(
                         @NotBlank(message = "Address Line one is required")String addressLineOne,
                         @NotBlank(message = "Address Line two is required") String addressLineTwo,
                         @NotBlank(message = "City is required") String city,
                         @NotBlank(message = "State is required")US_States state,
                         @NotBlank(message = "Zipcode is required")
                         @Pattern(regexp = "^\\d{5}(-\\d{4})?$",
                                 message = "Enter a valid US ZIP code (e.g. 12345 or 12345-6789)")
                         String zipcode) implements Serializable {

}