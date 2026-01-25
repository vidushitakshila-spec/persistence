package dev.vt.persistence.dao;

import dev.vt.persistence.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface PersonRepository extends JpaRepository<Person, Long> {
   Optional<Person> findByFullName(String fullName);
}