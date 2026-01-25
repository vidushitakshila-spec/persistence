package dev.vt.persistence.dto.response;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

import java.io.Serializable;

/**
 * A DTO for the {@link dev.vt.persistence.model.Contact} entity
 */
/*public record ContactDto(UUID id, String createdBy, Instant createdDate, String lastModifiedBy,
                         Instant lastModifiedDate,
                         PhoneDto phone, String email,
                         AddressDto address) implements Serializable {
}*/

public record ContactDto(
       String phone,
        @NotBlank(message = "Phone number is required")
        @Pattern(
                regexp = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$",
                message = "Invalid email format"
        ) String email,
        AddressDto address) implements Serializable {

}