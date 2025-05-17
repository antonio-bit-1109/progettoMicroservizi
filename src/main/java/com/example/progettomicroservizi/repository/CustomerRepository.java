package com.example.progettomicroservizi.repository;

import com.example.progettomicroservizi.entity.Customer;
import com.example.progettomicroservizi.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    Optional<Customer> findByMobileNumber(String mobileNumber);


}
