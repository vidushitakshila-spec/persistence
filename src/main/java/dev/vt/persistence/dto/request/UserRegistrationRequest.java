package dev.vt.persistence.dto.request;

import com.fasterxml.jackson.annotation.JsonFormat;
import dev.vt.persistence.dto.response.ContactDto;
import dev.vt.persistence.model.enums.Gender;
import dev.vt.persistence.model.enums.Role;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;

import java.time.LocalDate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public record UserRegistrationRequest(

        @Size(min = 4, max = 100)
        String title,

        @NotBlank(message = "First name is required")
        @Size(min = 4, max = 100)
        String firstname,

        @Size(min = 4, max = 100)
        String middlename,

        @NotBlank(message = "Last name is required")
        @Size(min = 4, max = 100)
        String lastname,

        @NotBlank(message = "Full name is required")
        @Size(min = 4, max = 100)
        String fullName,

        @NotBlank(message = "Institution Id is required")
        @Size(min = 10, max = 250)
        String institutionId,

        @NotBlank
        @Pattern(
                regexp = "STUDENT|ADMIN|FACULTY|OPERATION",
                message = "Invalid role"
        )
        @Enumerated(EnumType.STRING)
        Role role,

        @NotBlank
        @Pattern(
                regexp = "MALE|FEMALE|OTHER",
                message = "Invalid gender"
        )
        @Enumerated(EnumType.STRING)
        Gender gender,

        @NotNull(message = "Date of birth is required")
        @Past(message = "Date of birth must be in the past")
        @JsonFormat(pattern = "MM/dd/yyyy")
        LocalDate dob,

        @NotNull(message = "Date of joining is required")
        @JsonFormat(pattern = "MM/dd/yyyy")
        LocalDate doj,

        @Future(message = "Date of leaving must be in the future")
        @JsonFormat(pattern = "MM/dd/yyyy")
        LocalDate dol,

        @NotNull(message = "Contact details are required")
        @Valid
        ContactDto contact,

        boolean active
) {

        private static final LocalDate DEFAULT_DOL = LocalDate.of(9999, 12, 31);

        /** Canonical constructor */
        public UserRegistrationRequest {
                // Default active flag
                active = active;

                // Default Date of Leaving
                if (dol == null) {
                        dol = DEFAULT_DOL;
                }
        }

        /** Optional factory method */
        public static UserRegistrationRequest createWithDefaults(
                String title,
                String firstname,
                String middlename,
                String lastname,
                String fullName,
                String institutionId,
                String role,
                String gender,
                LocalDate dob,
                LocalDate doj,
                ContactDto contact) {
                return new UserRegistrationRequest(
                        title,
                        firstname,
                        middlename,
                        lastname,
                        buildFullName(title,firstname,middlename,lastname),
                        institutionId,
                        Role.valueOf(role.toUpperCase()),
                        Gender.valueOf(gender.toUpperCase()),
                        dob,
                        doj,
                        DEFAULT_DOL,
                        contact,
                        true);
        }

        private static String buildFullName(
                String title,
                String first,
                String middle,
                String last
                                           ) {
                return Stream.of(title, first, middle, last)
                        .filter(s -> s != null && !s.isBlank())
                        .collect(Collectors.joining(" "));
        }

}
