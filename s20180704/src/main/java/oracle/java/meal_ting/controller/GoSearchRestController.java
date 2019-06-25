package oracle.java.meal_ting.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.service.SearchService;
import scala.collection.Iterator;

@RestController
@RequestMapping("/GOsearchRest")
public class GoSearchRestController {
	@Autowired
	private SearchService ss;
	
	
	@RequestMapping("searchAjax")
	public List<ResInfo> searchAjax(String keyword) {
		System.out.println("searchAjax Start...");
		System.out.println("searchAjax keyword->"+keyword);
		List<ResInfo> resinfoAjax=ss.searchresinfo(keyword);

		return resinfoAjax;
	}
	

}
