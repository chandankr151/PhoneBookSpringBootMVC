package com.chandan.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chandan.entity.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long> {

}