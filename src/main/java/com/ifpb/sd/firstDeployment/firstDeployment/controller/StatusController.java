package com.ifpb.sd.firstDeployment.firstDeployment.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/")
public class StatusController {


    @GetMapping("status")
    public ResponseEntity<Object> status (){
        return ResponseEntity.ok("Ok!");
    }

}
