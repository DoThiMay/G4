package com.springmvc.G4_project.model;


import java.util.Date;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Document1")
public class Document {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(length = 512, nullable = false, unique = true)
    private String name;
    
    private String description;
    
    private long size;
    
    @Column(name = "upload_time")
    private Date uploadTime;

    private String filePath;

    private String linhvuc;

    public Document() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Document(long id, String name, String description, long size, Date uploadTime, String filePath,
            String linhvuc) {
        super();
        this.id = id;
        this.name = name;
        this.description = description;
        this.size = size;
        this.uploadTime = uploadTime;
        this.filePath = filePath;
        this.linhvuc = linhvuc;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getLinhvuc() {
        return linhvuc;
    }

    public void setLinhvuc(String linhvuc) {
        this.linhvuc = linhvuc;
    } 
    
}
