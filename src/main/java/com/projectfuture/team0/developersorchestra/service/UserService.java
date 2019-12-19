package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.forms.RegisterForm;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;

import java.util.List;

public interface UserService {

    List<OwnerModel> findAll();

    List<OwnerModel> findByEmail(String email);

    OwnerModel create(RegisterForm registerForm);
}
