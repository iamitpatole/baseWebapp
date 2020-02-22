package com.webapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webapp.models.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}