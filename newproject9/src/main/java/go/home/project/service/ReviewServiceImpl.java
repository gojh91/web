package go.home.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import go.home.project.dao.ReviewDao;
import go.home.project.model.MemberBoard;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDao rd;
	
	public List<MemberBoard> reviewList() {
		return rd.reviewList();
	}

}
