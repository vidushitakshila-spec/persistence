package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.Specialization;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.time.LocalDate;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Employee extends Person{


    private LocalDate dateOfJoining;

    @ManyToOne
    private Department department;


}
