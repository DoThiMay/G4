package com.springmvc.G4_project.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import com.springmvc.G4_project.model.Document;
import com.springmvc.G4_project.responsitories.DocumentRespository;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class DocumentApplicationTest {
    @Autowired
    private DocumentRespository repo;
    
    @Autowired
    private TestEntityManager entityManager;
    
    @Test
    @Rollback(false)
    void testInsertDocument() throws IOException {
        File file = new File("E:\\Do Thi May.pdf");
        Document document = new Document();
        document.setName(file.getName());
        byte[] bytes = Files.readAllBytes(file.toPath());
//        document.setContent(bytes);
        
        long fileSize = bytes.length;
        document.setSize(fileSize);
        document.setUploadTime(new Date());
        Document savedDoc = repo.save(document);
        
        Document existDoc = entityManager.find(Document.class, savedDoc.getId());
        
        assertThat(existDoc.getSize()).isEqualTo(fileSize);
        
    }
}
