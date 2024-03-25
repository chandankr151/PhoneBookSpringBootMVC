package com.chandan.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chandan.entity.Contact;
import com.chandan.repository.ContactRepository;
import com.chandan.service.ContactDataBaseProcess;
import com.chandan.service.EditContact;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController {

	@Autowired
	ContactDataBaseProcess contService;
	@Autowired
	ContactRepository view;

	@Autowired
	EditContact editContact;
	/*
	 * @GetMapping("/") public String LoadIndexJsp() { return "index"; }
	 */

	@GetMapping("/")
	public ModelAndView LoadIndexJsp() {
		ModelAndView mv = new ModelAndView();	
		mv.setViewName("index");

		return mv;
	}

	@GetMapping("/Context-Path")
	public ModelAndView ViewContactJsp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");

		return mv;
	}

	@PostMapping("/contactProcess")
	public ModelAndView contaAndView(HttpServletRequest req) {

		ModelAndView mv = new ModelAndView();

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");

		Contact contact = new Contact();

		contact.setName(name);
		contact.setEmail(email);
		contact.setPhone(phone);

		/* ContactDataBaseProcess contt = new ContactDataBaseProcess(); */
		contService.AddContact(contact);

		mv.setViewName("ContactInfo");
		return mv;
	}

	@PostMapping("/updateContact")
	public ModelAndView contUpdateService(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Long id = Long.parseLong(request.getParameter("id1"));
		String name = request.getParameter("nm");
		String email = request.getParameter("em");
		String phone = request.getParameter("ph");
		Contact contact = null;
		Optional<Contact> present = view.findById(id);
		if (present.isPresent()) {
			contact = present.get();
		}
		contact.setPhone(phone);
		contact.setName(name);
		contact.setEmail(email);

		editContact.AddContact(contact);
		
		mv.setViewName("ContactInfo");
		return mv;
	}

	@GetMapping("/displayAll")
	public ModelAndView displayAll() {

		ModelAndView mvn = new ModelAndView();
		List<Contact> data = view.findAll();

		mvn.addObject("viewData", data);
		mvn.setViewName("viewContacts");
		return mvn;
	}

	@GetMapping("/searchContact")
	public ModelAndView searchContact() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("SearchContact");
		return mv;
	}
	
	@GetMapping("/userEdit")
	public ModelAndView edit_Contact(@RequestParam("id") long id) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		Optional<Contact> present = view.findById(id);
		
		if (present.isEmpty()) {
			System.out.println("Searched Contact is not available!!!");
			mv.setViewName("failedSearch");
		} else {
			System.out.println(present.get().getEmail());
			mv.addObject("searchedData", present);
			mv.setViewName("editSuccess");
		}

		return mv;
	}
	
	@GetMapping("/userDelete")
	public ModelAndView delete_Contact(@RequestParam("id") long id) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		Optional<Contact> present = view.findById(id);
		
		if (present.isEmpty()) {
			System.out.println("Contact is not available to delete!!!");
			mv.setViewName("failedSearch");
		} else {
			view.deleteById(id);
			mv.setViewName("deleteSuccessInfo");
		}

		return mv;
	}

	@GetMapping("/success")
	public ModelAndView ContactInfoProcess() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contactInfo");

		return mv;
	}
}