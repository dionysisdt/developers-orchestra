package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.model.LoginResponse;
import com.projectfuture.team0.developersorchestra.repository.OwnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Arrays;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    OwnerRepository ownerRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // here we would search into the repo for the user.
        // for not we are just going to send always a successful response.
        Owner user = ownerRepository.findByEmail(username);

/*        List<SimpleGrantedAuthority> authorization = Collections.singletonList(new SimpleGrantedAuthority("ADMIN"));
        CharSequence password = "password";*/

        return new LoginResponse(user.getEmail(), user.getPassword(), Arrays.asList(new SimpleGrantedAuthority(user.getUserPrivileges().name())));


    }
}
