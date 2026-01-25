package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;

@Entity
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Employee extends Person{

    @Column(nullable = false)
    private LocalDate dateOfJoining;

    @ManyToOne()
    @JoinColumn(name ="department_id")
    private Department department;

    @Column(nullable = false)
    private Double salary;


}
