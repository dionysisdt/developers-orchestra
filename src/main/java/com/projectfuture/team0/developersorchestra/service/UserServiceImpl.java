package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.forms.RegisterForm;
import com.projectfuture.team0.developersorchestra.mappers.OwnerToOwnerModelMapper;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.repository.OwnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private OwnerRepository repository;

    @Autowired
    private OwnerToOwnerModelMapper userMapper;


    @Override
    public List<OwnerModel> findAll() {
        return repository
                .findAll()
                .stream()
                .map(user -> userMapper.mapToOwnerModel(user))
                .collect(Collectors.toList());
    }

    @Override
    public List<OwnerModel> findByEmail(String email) {
        return repository
                .findOwnerByEmail(email)
                .stream()
                .map(user -> userMapper.mapToOwnerModel(user))
                .collect(Collectors.toList());
    }

    @Override
    public OwnerModel create(RegisterForm registerForm) {
        Owner user = new Owner(registerForm);
        Owner savedUser = repository.save(user);
        return userMapper.mapToOwnerModel(savedUser);
    }
}
