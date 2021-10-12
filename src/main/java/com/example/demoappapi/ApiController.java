package com.example.demoappapi;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")
public class ApiController {

    @GetMapping("/k8s")
    public Map<String,String> getHelloK8s(){

        Map<String,String> data = new HashMap<>();
        data.put("type","k8s");
        data.put("version","1.0.2");
        data.put("author","billyX");
        return data;

    }
}
