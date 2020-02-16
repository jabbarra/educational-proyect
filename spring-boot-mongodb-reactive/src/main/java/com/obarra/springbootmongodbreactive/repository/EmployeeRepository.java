package com.obarra.springbootmongodbreactive.repository;

import com.obarra.springbootmongodbreactive.model.Employee;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import reactor.core.publisher.Flux;

public interface EmployeeRepository extends ReactiveMongoRepository<Employee, Long> {
    @Query("{'name': ?0}")
    Flux<Employee> findByName(final String name);
}
