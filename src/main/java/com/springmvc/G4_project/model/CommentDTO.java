package com.springmvc.G4_project.model;

import java.util.Date;

public class CommentDTO {
    private Long id;
    private Long document_id;
    private String content;
    private String user_name;
    private Date created_at;
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public Long getDocument_id() {
        return document_id;
    }
    public void setDocument_id(Long document_id) {
        this.document_id = document_id;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getUser_name() {
        return user_name;
    }
    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
    public Date getCreated_at() {
        return created_at;
    }
    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }
    
    
    
}
