package com.p1.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.p1.entity.StudentEntity;

public interface StudentRepository extends JpaRepository<StudentEntity, Integer>{

}
