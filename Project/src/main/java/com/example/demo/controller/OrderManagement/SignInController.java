package com.example.demo.controller.OrderManagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignInController 
	{
		@RequestMapping("signin")
		public String SignIn() 
			{
				return "/OrderManagement/SignIn";
			}
	
	}
