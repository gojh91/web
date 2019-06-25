package oracle.java.meal_ting.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;
import oracle.java.meal_ting.service.ResInfoService;

@Controller
public class JhResInfoController {

	@Autowired
	private ResInfoService ris;
	@Autowired
	private HSCheckMember hsc;
	
	// Main Page
	
	public void JhMain(Model model) {
		 List<ResInfo> ResMainList = ris.mainList(); 
		 Iterator<ResInfo> riItr = ResMainList.iterator(); 
		 int i = 0;
		 
		 while (riItr.hasNext()) {
		 ResInfo mainList = new ResInfo();
		 mainList = riItr.next();
		 
		 String attrName = "mainList" + Integer.toString(i);
		 model.addAttribute(attrName, mainList);
		 
		 System.out.println("ResMainList.get(i) ==>> " + ResMainList.get(i));
		 System.out.println(ResMainList.get(i).getRes_name() + attrName); i++; }
	}
	

	@RequestMapping(value = "Main")
	public String MainPage(HttpServletRequest request, Model model) {
		System.out.println("Main Start....");
		System.out.println(request);
		boolean loginTF = hsc.checkLogin(request);
		
		String result = "";
		
		JhMain(model);
		HttpSession session = request.getSession();
		if(loginTF){
			
			Member member = (Member) session.getAttribute("memberMe");
			model.addAttribute("member", member);
			model.addAttribute("loginTF", true);
			model.addAttribute("login", true);
			result = hsc.checkAutority(member);
		}
		else if(!loginTF){
			session.setAttribute("login", false); // 세션에 로그인 저장
			model.addAttribute("loginTF", false);
			model.addAttribute("login", false);
			result = "main";
		}
		
		return result;
	}
	
	@RequestMapping(value = "JhBestInfo")
	public String RankingList(Model model) {

		System.out.println("bestInfo Controller실행");

		List<ResInfoBoard> bestInfo = ris.bestInfo();
		Iterator<ResInfoBoard> ribitr = bestInfo.iterator();
		int i = 0;
		while (ribitr.hasNext()) {
			ResInfoBoard bestInfoRib = new ResInfoBoard();

			bestInfoRib = ribitr.next();
			String attrName = "bestInfo" + Integer.toString(i);
			model.addAttribute(attrName, bestInfoRib);
			i++;
		}
		return "bestInfo";
	}
	
	
	@RequestMapping(value = "ReviewRanking")
	public String ReviewRankingList(Model model) {

		System.out.println("ReviewRankingList Controller실행");

		List<ResInfoBoard> ReviewRanking = ris.reviewRanking();
		Iterator<ResInfoBoard> ribitr = ReviewRanking.iterator();
		int i = 0;
		
		while (ribitr.hasNext()) {
			ResInfoBoard ReviewRankingRib = new ResInfoBoard();

			ReviewRankingRib = ribitr.next();
			String attrName = "ReviewRanking" + Integer.toString(i);
			model.addAttribute(attrName, ReviewRankingRib);
			i++;
			
			
			System.out.println(ReviewRankingRib.getRes_name());
		}
		return "ReviewRanking";
	}

	@RequestMapping(value = "ScoreRanking")
	public String ScoreRankingList(Model model) {

		System.out.println("ScoreRankingList Controller실행");

		List<ResInfoBoard> ScoreRanking = ris.scoreRanking();
		Iterator<ResInfoBoard> ribitr = ScoreRanking.iterator();
		int i = 0;
		
		while (ribitr.hasNext()) {
			ResInfoBoard ScoreRankingListRib = new ResInfoBoard();

			ScoreRankingListRib = ribitr.next();
			String attrName = "ScoreRanking" + Integer.toString(i);
			model.addAttribute(attrName, ScoreRankingListRib);
			i++;
				
		}
		return "ScoreRanking";
	}
	
	@RequestMapping(value = "MealTingRanking")
	public String MealTingRankingList(Model model) {

		System.out.println("MealTingRankingList Controller실행");

		List<ResInfoBoard> MealTingRankingList = ris.mealTingRanking();
		Iterator<ResInfoBoard> ribitr = MealTingRankingList.iterator();
		int i = 0;
		
		while (ribitr.hasNext()) {
			ResInfoBoard MealTingRankingListRib = new ResInfoBoard();

			MealTingRankingListRib = ribitr.next();
			String attrName = "MealTingRanking" + Integer.toString(i);
			model.addAttribute(attrName, MealTingRankingListRib);
			i++;
				
		}
		return "MealTingRanking";
	}
	
	
	
	
	@RequestMapping(value = "JhReviewFeed")
	public String reviewFeed() {
		return "redirect:JYmainList.do";
	}

}