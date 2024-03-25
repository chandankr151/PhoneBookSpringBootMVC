package com.chandan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chandan.repository.ContactRepository;

@Service
public class deleteContact {

	@Autowired
	ContactRepository contDelete;

}
