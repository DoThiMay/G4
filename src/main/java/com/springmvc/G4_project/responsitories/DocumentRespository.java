package com.springmvc.G4_project.responsitories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springmvc.G4_project.model.Document;
import com.springmvc.G4_project.model.SubDoc;
@Repository
public interface DocumentRespository extends JpaRepository<Document, Long>{
//    @Query(value = "Select * from Document d ORDER BY d.upload_time DESC", nativeQuery = true)
//    List<Document> findAll();
    @Query(value ="SELECT * FROM Document1 d ORDER BY d.uploadTime DESC", nativeQuery = true)
    List<Document> findAllDocumentProjections();
}
