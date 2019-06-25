package oracle.java.meal_ting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.service.ResInfoService;

@Controller
public class HgResInfoController {
	@Autowired
	private ResInfoService ris;
		
	@RequestMapping(value="HgresInfo",method=RequestMethod.GET )
	public String resInfo(int res_num, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		System.out.println(res_num);
		ResInfo ri = ris.getInfo(res_num);
		List<Menu> menu =  ris.getMenuInfo(res_num);
				
		model.addAttribute("resInfo", ri);
		model.addAttribute("menu",    menu);
		return "resInfo";
	}
}
