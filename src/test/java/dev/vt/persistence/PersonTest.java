package java.dev.vt.persistence;

import dev.vt.persistence.dao.PersonRepository;
import dev.vt.persistence.model.Person;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class PersonTest {

    @Autowired
    private PersonRepository personRepository;

    @Test
    void testAllPerson() {
        List<Person> personList;
    }
}
