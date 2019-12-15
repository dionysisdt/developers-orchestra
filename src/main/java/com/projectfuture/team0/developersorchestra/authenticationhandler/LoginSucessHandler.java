package com.projectfuture.team0.developersorchestra.authenticationhandler;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

import static com.projectfuture.team0.developersorchestra.utils.GlobalAttributes.TIMESTAMP_COOKIE_NAME;

@Component
public class LoginSucessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    private static final String USER_HOME_PAGE_URL = "/owner/home";
    private static final String ADMIN_HOME_PAGE_URL = "/admin/home";

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        //loginAttemptService.loginSucceeded(request.getSession());

        response.addCookie(generateTimestampCookie());

        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        String redirectUrl = USER_HOME_PAGE_URL;
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("ADMIN")) {
                redirectUrl = ADMIN_HOME_PAGE_URL;
            }
        }
        redirectStrategy.sendRedirect(request, response, redirectUrl);
    }


    private Cookie generateTimestampCookie() {
        return new Cookie(TIMESTAMP_COOKIE_NAME, String.valueOf(System.currentTimeMillis()));
    }


}