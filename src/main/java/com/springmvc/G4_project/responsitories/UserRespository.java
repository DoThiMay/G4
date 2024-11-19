package com.springmvc.G4_project.responsitories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.springmvc.G4_project.model.Document;
import com.springmvc.G4_project.model.User;


public interface UserRespository extends CrudRepository<User, Long>{
    @Query(value = "SELECT * FROM User u WHERE u.username = ?1", nativeQuery = true)
    public User findByEmail(String username);
    @Query(value = "SELECT * FROM User WHERE userId = ?1", nativeQuery = true)
    User CheckUser(Long userId);
    @Query(value ="SELECT * FROM Comment d WHERE d.username LIKE %?1%", nativeQuery = true)
    List<User> findByComment(Long id);
    @Query(value="SELECT * FROM user u WHERE u.username = :username", nativeQuery = true)
    public User getUserByUsername(@Param("username") String username);
}
