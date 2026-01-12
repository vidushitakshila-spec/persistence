package dev.vt.persistence.model;

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

    @Column(nullable = false)
    private LocalDate dateOfJoining;

    @ManyToOne
    @JoinColumn(name ="department_id")
    private Department department;

    @Column(nullable = false)
    private Double salary;


}
