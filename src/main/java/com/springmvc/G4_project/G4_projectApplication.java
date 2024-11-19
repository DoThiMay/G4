package com.springmvc.G4_project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = "com.springmvc.G4_project.model")
public class G4_projectApplication {
    public static void main(String[] args) {
        SpringApplication.run(G4_projectApplication.class, args);
    }
}
