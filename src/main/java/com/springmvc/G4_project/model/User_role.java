package com.springmvc.G4_project.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "User_role")
public class User_role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long user_roleId;
    private Long userId;
    private Long roleId;
    public Long getUserId() {
        return userId;
    }
    public void setUserId(Long userId) {
        this.userId = userId;
    }
    public Long getRoleId() {
        return roleId;
    }
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
    public Long getUser_roleId() {
        return user_roleId;
    }
    public void setUser_roleId(Long user_roleId) {
        this.user_roleId = user_roleId;
    }
    public User_role(Long userId, Long roleId) {
        super();
        this.userId = userId;
        this.roleId = roleId;
    }
    public User_role() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
}
