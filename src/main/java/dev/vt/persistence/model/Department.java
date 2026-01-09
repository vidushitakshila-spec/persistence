package dev.vt.persistence.model;

import dev.vt.persistence.Phone;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Department extends  AuditableEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @OneToMany
    @Column(name = "employee", nullable = false)
    @JoinColumn(name = "employee_id")
    private List<Employee> employee;

/*    @OneToOne
    @Column(name = "hod", nullable = false)
    private Employee hod;*/
}
