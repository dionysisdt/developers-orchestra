package com.projectfuture.team0.developersorchestra.exception;

public class OwnersNotFoundExceptions extends RuntimeException {

    public OwnersNotFoundExceptions(String msg, Throwable t) {
        super(msg, t);
    }

    public OwnersNotFoundExceptions(String msg) {
        super(msg);
    }

}