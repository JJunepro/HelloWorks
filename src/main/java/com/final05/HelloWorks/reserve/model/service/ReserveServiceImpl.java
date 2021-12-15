package com.final05.HelloWorks.reserve.model.service;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Service("reserveService")
public class ReserveServiceImpl implements ReserveService {

	
	@RequestMapping(value = "/reserve", method = RequestMethod.GET)
	public String todolist() {
		return "reserve";
	}
}
