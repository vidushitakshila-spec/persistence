package dev.vt.persistence.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.time.Instant;

@Entity
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class AssignmentFile {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "id", nullable = false)
  private Long id;

  @ManyToOne(optional = false)
  private Assignment assignment;

  private String s3Bucket;
  private String s3Key;      // path/object key
  private String fileName;
  private String contentType;
  private long fileSize;

  private Instant uploadedAt;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

}
