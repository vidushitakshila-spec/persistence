package dev.vt.persistence.model;

import jakarta.persistence.*;

@MappedSuperclass
public abstract class BaseEntity {

  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "person_seq")
  @SequenceGenerator(
          name = "person_seq",
          sequenceName = "person_seq",
          allocationSize = 50
  )
  private Long id;
}