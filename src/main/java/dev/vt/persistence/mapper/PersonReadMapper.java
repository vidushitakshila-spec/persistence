package dev.vt.persistence.mapper;

import dev.vt.persistence.dto.response.AddressDto;
import dev.vt.persistence.dto.response.ContactDto;
import dev.vt.persistence.dto.response.PersonDto;
import dev.vt.persistence.model.Address;
import dev.vt.persistence.model.Contact;
import dev.vt.persistence.model.Person;
import org.springframework.stereotype.Component;
@Component
public class PersonReadMapper {

    public PersonDto toDto(Person person) {
        if (person == null) return null;

        Contact contact = person.getContact();
        if (contact == null) return null;

        Address address = contact.getAddress();
        AddressDto addressDto = toAddressDto(address);

        ContactDto contactDto =
                new ContactDto(
                        contact.getPhone() != null ? contact.getPhone().getPhone() : null,
                        contact.getEmail(),
                        addressDto
                );

        return new PersonDto(
                person.getFullName(),
                person.getGender(),
                person.getDob(),
                contactDto
        );
    }

    private AddressDto toAddressDto(Address address) {
        if (address == null) return null;

        return new AddressDto(
                address.getAddressLineOne(),
                address.getAddressLineTwo(),
                address.getCity(),
                address.getState(),
                address.getZipcode()
        );
    }
}
