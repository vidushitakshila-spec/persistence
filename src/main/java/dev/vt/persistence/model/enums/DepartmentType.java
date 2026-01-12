package dev.vt.persistence.model.enums;

import java.util.Set;

public enum DepartmentType {

    FACULTY(Set.of(
            FacultySpecialization.SCIENCE,
            FacultySpecialization.ARTS,
            FacultySpecialization.COMMERCE,
            FacultySpecialization.ENGINEERING
                  )),

    ADMIN(Set.of()),
    OPERATIONS(Set.of());

    private final Set<FacultySpecialization> specializations;

    DepartmentType(Set<FacultySpecialization> specializations) {
        this.specializations = specializations;
    }

    public boolean hasSpecializations() {
        return !specializations.isEmpty();
    }

    public Set<FacultySpecialization> getSpecializations() {
        return specializations;
    }
}