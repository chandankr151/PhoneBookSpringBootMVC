package com.chandan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chandan.entity.Contact;
import com.chandan.repository.ContactRepository;

@Service
public class EditContact {

	@Autowired
	ContactRepository contEdit;

	public void AddContact(Contact Obj) {

		contEdit.save(Obj);
	}
	
	
}
