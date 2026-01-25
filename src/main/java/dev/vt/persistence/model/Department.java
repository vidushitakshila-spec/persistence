package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.DepartmentType;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.util.List;

@Entity
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Department extends  AuditableEntity{

    @Enumerated(EnumType.STRING)
    @Column(name = "name", nullable = false)
    private DepartmentType department;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name= "contact_id", nullable = false)
    private Contact contact;

    @OneToMany(mappedBy = "department")
    private List<Employee> employees;

/*    @OneToOne
    @Column(name = "hod", nullable = false)
    private Employee hod;*/
}
