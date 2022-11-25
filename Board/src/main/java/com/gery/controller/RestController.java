package com.gery.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gery.domain.BoardVO;

import lombok.extern.log4j.Log4j;



@org.springframework.web.bind.annotation.RestController
@RequestMapping("/Json")
@Log4j
public class RestController {
	
	@GetMapping(value = "/getText", produces="text/plain; charset=UTF-8")
	public String getText() {
		log.info("MIME TYPE: " + MediaType.TEXT_PLAIN_VALUE);
		
		return "æ»≥Á«œººø‰";
	}
	
	
}