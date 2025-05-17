package com.example.progettomicroservizi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing(auditorAwareRef = "auditAwareImpl")
public class ProgettoMicroserviziApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProgettoMicroserviziApplication.class, args);
    }

}
