package dev.vt.persistence.model;

import dev.vt.persistence.model.enums.US_States;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Address {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", nullable = false)
  private Long id;

  @Column(name = "firstline", nullable = false)
  private String addressLineOne;

  @Column(name = "secondline")
  private String addressLineTwo;

  @Column(name = "city")
  private String city;

  @Enumerated(EnumType.STRING)
  @Column(name = "state", nullable = false)
  private US_States state;

  @Column(name = "zip", nullable = false)
  private String zipcode;

}
