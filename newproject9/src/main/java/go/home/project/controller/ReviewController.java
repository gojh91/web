package go.home.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import go.home.project.model.MemberBoard;
import go.home.project.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService rs;
	
	@RequestMapping(value="reviewList")
	public String reviewList(Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"reviewList\")");
		List<MemberBoard> reviewList = rs.reviewList();
		model.addAttribute("reviewList",reviewList);
		
		return "reviewList";
	}

}
