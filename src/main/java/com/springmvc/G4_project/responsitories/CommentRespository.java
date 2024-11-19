package com.springmvc.G4_project.responsitories;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.springmvc.G4_project.model.Comment;
import com.springmvc.G4_project.model.Document;
@Repository
public interface CommentRespository extends JpaRepository<Comment, Long>{
    @Query(value ="SELECT * FROM Comment d WHERE d.document_id =?1", nativeQuery = true)
    List<Comment> findByDocumentId(Long id);
    
    @Query(value = "DELETE FROM Comment c WHERE c.document_id = ?1", nativeQuery = true)
    void deleteByDocumentId(Long documentId);
}
