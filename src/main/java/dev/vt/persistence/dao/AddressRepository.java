package dev.vt.persistence.dao;

import dev.vt.persistence.model.Address;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepository extends JpaRepository<Address, Long> {
}