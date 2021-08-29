package com.example.chekuda.security.listener;

import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AbstractAuthenticationEvent;
import org.springframework.security.authentication.event.InteractiveAuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationEventListener implements ApplicationListener<AbstractAuthenticationEvent> {

    @Override
    public void onApplicationEvent(AbstractAuthenticationEvent authenticationEvent) {
        if (authenticationEvent instanceof InteractiveAuthenticationSuccessEvent)
            return;
        Authentication authentication = authenticationEvent.getAuthentication();
        String message = "Login attempt from " +
                authentication.getName() + " with authorities " +
                authentication.getAuthorities() + " credentials " +
                authentication.getCredentials() + " and principal " +
                authentication.getPrincipal() + " \t\t Success: " +
                authentication.isAuthenticated();
        System.out.println(message);
    }
}