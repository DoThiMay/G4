package com.springmvc.G4_project.responsitories;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springmvc.G4_project.model.Document;
import com.springmvc.G4_project.model.Role;

public interface RoleRespository extends JpaRepository<Role, Long>{
    @Query(value ="SELECT * FROM Role WHERE rolename=?1", nativeQuery = true)
    Role findByName(String rolename);
}
