package com.example.employee.service;



import com.example.employee.model.Employee;
import com.example.employee.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;


    public Employee findEmployeeById(String id){
        return employeeRepository.findEmployeeById(id);
    }

    public Employee saveEmployee(Employee customer){
        return employeeRepository.save(customer);
    }
}
