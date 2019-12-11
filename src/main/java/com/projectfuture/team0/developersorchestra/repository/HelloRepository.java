package com.projectfuture.team0.developersorchestra.repository;

import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.Map;

@Repository
public class HelloRepository {

    private static Map<String, String> userMap = Collections.singletonMap("1", "KwstasDimitirs");

    public String getUserFromId(String id) {
        return userMap.get(id);
    }

}
