package com.projectfuture.team0.developersorchestra.controller.owner;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.forms.OwnerForm;
import com.projectfuture.team0.developersorchestra.mappers.OwnerFormToOwnerMapper;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

import static com.projectfuture.team0.developersorchestra.utils.GlobalAttributes.ERROR_MESSAGE;

@Controller
//@RequestMapping("admin")
public class CreateOwnerController {

        private static final String OWNERS_FORM = "ownersForm";
        private static final String PROPERTY_TYPES = "propertyTypes";

        @Autowired
        private OwnerService ownerService;

        @Autowired
        private OwnerFormToOwnerMapper mapper;

        @GetMapping(value = "/admin/create")
        public String ownersDynamic(Model model) {

            model.addAttribute(OWNERS_FORM, new OwnerForm());
            model.addAttribute(PROPERTY_TYPES, PropertyType.values());
            return "owners/createOwner";
        }

        @PostMapping(value = "/admin/create")
        public String createOwners(Model model,
                                  @Valid @ModelAttribute(OWNERS_FORM)
                                          OwnerForm ownerForm,
                                  BindingResult bindingResult) {

            if (bindingResult.hasErrors()) {
                //have some error handling here, perhaps add extra error messages to the model
                model.addAttribute(ERROR_MESSAGE, "an error occurred");
                return "owners/createOwner";
            }

            Owner owner = mapper.toOwner(ownerForm);
            ownerService.createOwner(owner);
            return "redirect:/admin/home";
        }

}
