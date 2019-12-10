package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.repository.HelloRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class HelloService {

    @Autowired
    private HelloRepository repository;

    public String getUsernameFromId(String id) {
        String username = repository.getUserFromId(id);
        return Optional.ofNullable(username).orElse("unknown user");
    }
}
