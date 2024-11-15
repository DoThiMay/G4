package com.springmvc.G4_project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User")
public class User {
    @Id
    @Column(name = "userId")
    private String userId;
    private String username;
    private String password;
    public User(String userId, String username, String password) {
        super();
        this.userId = userId;
        this.username = username;
        this.password = password;
    }
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
   
}
