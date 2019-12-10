package com.projectfuture.team0.developersorchestra.validators;

import com.projectfuture.team0.developersorchestra.forms.RegisterForm;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.Optional;

@Component
public class ValidationRegister implements Validator {

    @Autowired
    private OwnerService ownerService;

    @Override
    public boolean supports(Class<?> aClass) {

        return RegisterForm.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object target, Errors errors) {

        RegisterForm registrationForm = (RegisterForm) target;

        Optional<OwnerModel> usersWithGivenEmail = ownerService.findOwnerByEmail(registrationForm.getEmail());
        if (!usersWithGivenEmail.isEmpty()) {
            errors.rejectValue("email", "error.email.taken");
        }

        ValidationUtils.rejectIfEmpty(errors, "username", "username.empty");
    }
}
