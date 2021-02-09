package com.kbalazsworks.build;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class BuildApplication
{

    public static void main(String[] args)
    {
        SpringApplication.run(BuildApplication.class, args);
    }

    private record test()
    {
    }

    @RestController
    public class TestController
    {
        @GetMapping(value = "/")
        public String hello()
        {
            return "Hello World!!";
        }
    }
}
