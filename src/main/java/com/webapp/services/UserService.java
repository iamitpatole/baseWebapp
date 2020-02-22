package com.webapp.services;

import com.webapp.models.User;

public interface UserService {
	void save(User user);

	User findByUsername(String username);
}
