package com.springmvc.G4_project.responsitories;

import org.springframework.data.repository.CrudRepository;

import com.springmvc.G4_project.model.User;


public interface UserRespository extends CrudRepository<User, String>{

}
