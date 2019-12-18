package com.example.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebController {

	@RequestMapping("list")
	public String list(String email, HttpSession session){
		if(email != null){
			session.setAttribute("uid", email);
		}
		return "list";
	}
	
	@RequestMapping("write")
	public String write(){
		return "write";
	}
	
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public String loginPost(String uid, String upw, HttpSession session){
		// ID : user00 & PW : pass
		if(uid.equals("user00") && upw.equals("pass")){
			session.setAttribute("uid", uid);
			
			if(session.getAttribute("dest") != null){
				return "redirect:" + (String)session.getAttribute("dest");
			}
		}
		System.out.println(uid + "/" + upw);
		return "redirect:list";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.removeAttribute("uid");
		return "redirect:list";
	}
	
	@RequestMapping("naverlogin")
	public String naverlogin(){
		return "naverlogin";
	}
	
}
