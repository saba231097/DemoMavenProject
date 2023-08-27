package com.demo.DemoProject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingAPI {
    @GetMapping("/birthdayGeeting")
    public String[] getBirthdayGreeting(){
        String[] str=new String[4];
        str[0]="Wishing you very happy birthday";
        str[1]="Happy BirthDay";
        str[2]="Many Many happy returns of the day";
        str[3]="Let's party.....!!!!";
        return str;
    }
}
