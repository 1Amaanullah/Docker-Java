package com.dockerclient.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dockertest")
public class Controller {
	
	@GetMapping
	public String getValue() {
		return "demo";
	}

}
