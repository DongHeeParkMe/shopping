package shopping.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shopping.dao.Shoppingdao;
import shopping.service.Shoppingservice;
import shopping.vo.Member;

@Controller
@RequestMapping("/start.do")
public class MemberController {
	@Autowired(required=false)
	private Shoppingservice service;
	
	// /shop.do?method=main
	@RequestMapping(params="method=main")
	public String main() {
		return "main";
	}
	@RequestMapping(params="method=join")
	public String join(Member ins) {
		service.join(ins);
	return "forward:/start.do?method=main";
	}
	
	@RequestMapping(params="method=login")
	public String login(Member c, HttpSession session) {
        try{
        	c = service.login(c);
            if(c.getEmail()!=null){
            	session.setAttribute("login", c);
                return "forward:/start.do?method=main";
            }else{
                return "redirect:/start.do?method=main";
            }
        }catch(Exception e){
            return "redirect:/start.do?method=main";
        }
	}
	@Autowired(required=false)
	private Shoppingdao dao;
	@RequestMapping(params="method=chkid")
	public String chkid(Member chk, Model d) {
	d.addAttribute("hasId",dao.chkid(chk)!=null?"가입 불가능.":"가입 가능.");
		return "pageJsonReport";
	}
}
