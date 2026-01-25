package dev.vt.persistence.model.enums;

public enum Role {
    ADMIN,FACULTY,STUDENT,OPERATION;

    public static Role from(String value) {
        return Role.valueOf(value.toUpperCase());
    }
}
