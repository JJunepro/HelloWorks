package com.final05.HelloWorks.attendance.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.final05.HelloWorks.attendance.dao.AttendanceDAO;

@Controller
@RequestMapping("/work")
public class AttendanceController {
	
	@Inject
	private AttendanceDAO attDAO;
	
}