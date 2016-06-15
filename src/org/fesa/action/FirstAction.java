package org.fesa.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.fesa.pojo.UserPojo;
import org.fesa.service.MethodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/news")
public class FirstAction {

	@Autowired
	private MethodService methodservice;
	
	@Autowired  
	private  HttpServletRequest request; 
	
	@RequestMapping(value="/getNews",method=RequestMethod.GET)
	public String test1(Model model){
		model.addAttribute("users", methodservice.method1());
		return "/news/newsDisplay";
	}
	@ResponseBody
	@RequestMapping(value="/getUsers",method=RequestMethod.GET)
	public String getUserData(){
		List<UserPojo> result=methodservice.method1();
		return JSON.toJSONString(result);
	}
}
