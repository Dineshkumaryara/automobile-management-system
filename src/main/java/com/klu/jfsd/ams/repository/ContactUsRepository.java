package com.klu.jfsd.ams.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.ams.model.ContactUs;

@Repository
public interface ContactUsRepository extends JpaRepository<ContactUs, Long> {
    // Add any custom queries or methods if needed
}
