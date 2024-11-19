package com.springmvc.G4_project.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Comment")
public class Comment {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String user_name;
    private Long document_id;
    private String content;
    private Date created_at;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
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

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Comment(Long id, String user_name, Long document_id, String content, Date created_at) {
        super();
        this.id = id;
        this.user_name = user_name;
        this.document_id = document_id;
        this.content = content;
        this.created_at = created_at;
    }

    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

}
