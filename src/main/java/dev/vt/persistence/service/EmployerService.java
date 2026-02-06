package dev.vt.persistence.service;

import dev.vt.persistence.dto.response.PersonDto;
import dev.vt.persistence.model.Employee;
import dev.vt.persistence.model.enums.DepartmentType;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployerService {

    //public EmplyeeDto getEmployeeDtls(String name) ;

    public Employee getEmployee(Long id){
        return null;
    }


    public List<Employee> getByDepartment(String department){
        return null;
    }


}
