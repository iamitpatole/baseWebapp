package com.webapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webapp.models.Role;

public interface RoleRepo extends JpaRepository<Role, Long>{
}