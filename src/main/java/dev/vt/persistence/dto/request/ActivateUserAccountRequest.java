package dev.vt.persistence.dto.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record ActivateUserAccountRequest(

        @NotBlank(message = "Institution ID is required")
        String institutionId,

        @NotBlank
        @Email(message = "Invalid email")
        String email,

        @NotBlank
        @Size(min = 4, max = 50)
        String username,

        @NotBlank
        @Size(min = 8, max = 100)
        String password
) {}
