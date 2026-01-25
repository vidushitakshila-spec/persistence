package dev.vt.persistence.dto.response;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

import java.io.Serializable;

/**
 * A DTO for the {@link dev.vt.persistence.model.Phone} entity
 */
public record PhoneDto(
        @NotBlank(message = "Phone number is required")
        @Pattern(
                regexp = "^\\+[1-9][0-9]{7,14}$",
                message = "Phone number must be in international format (e.g. +919876543210)"
        )
        String phone
) implements Serializable { }