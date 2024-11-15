package com.springmvc.G4_project.model;

public class SubDoc {
    private long id;
    private String name;
    private long size;
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
    public long getSize() {
        return size;
    }
    public void setSize(long size) {
        this.size = size;
    }
    public SubDoc(long id, String name, long size) {
        super();
        this.id = id;
        this.name = name;
        this.size = size;
    }
    public SubDoc() {
        super();
        // TODO Auto-generated constructor stub
    }
    
}
