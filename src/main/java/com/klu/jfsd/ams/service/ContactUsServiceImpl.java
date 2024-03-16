package com.klu.jfsd.ams.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klu.jfsd.ams.model.ContactUs;
import com.klu.jfsd.ams.repository.ContactUsRepository;

@Service
public class ContactUsServiceImpl implements ContactUsService {
    @Autowired
    private ContactUsRepository contactUsRepository;

    @Override
    public ContactUs saveContactUs(ContactUs contactUs) {
        return contactUsRepository.save(contactUs);
    }
}
