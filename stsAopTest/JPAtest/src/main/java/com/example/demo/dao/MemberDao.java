package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Member100;
@Repository
public interface MemberDao extends JpaRepository<Member100, String> {

}
