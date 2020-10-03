package com.webapp.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.webapp.models.User;

@RestController
@RequestMapping("/api")
public class UsersController {

	@GetMapping("/users/all") 
	public List<User> fetchUsers() {

		List<User> list = new ArrayList<>();

		User user = new User();
		user.setUsername("aa");

		User user1 = new User();
		user1.setUsername("aa");

		list.add(user);
		list.add(user1);

		return list;
	}

}
