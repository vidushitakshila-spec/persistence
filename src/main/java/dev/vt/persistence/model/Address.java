package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.US_States;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Address {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", nullable = false)
  private Long id;

  @Column(name = "firstline", nullable = false)
  private String addressLineOne;

  @Column(name = "secondline")
  private String addressLineTwo;

  @Enumerated(EnumType.STRING)
  @Column(name = "state", nullable = false)
  private US_States state;

  @Column(name = "zip", nullable = false)
  private String zipcode;

}
