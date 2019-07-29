package go.home.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import go.home.project.model.Reply;
import go.home.project.service.SocialService;

@RestController
@RequestMapping("/SocialRest")
public class SocialRestController {
	@Autowired
	private SocialService ss;
	
	@RequestMapping(value = "boardReplyUpdate") //social ´ñ±Û ¼öÁ¤
	public void boardReplyUpdate(HttpServletRequest request, Model model, String bd_num, String re_seqNum, String re_content) {
		System.out.println("@RequestMapping(value = \"boardReplyUpdate\")");
		Reply reply = new Reply();
		reply.setBd_num(Integer.parseInt(bd_num));
		reply.setRe_seqNum(Integer.parseInt(re_seqNum));
		reply.setRe_content(re_content);
		
		ss.boardReplyUpdate(reply);
	}

}
