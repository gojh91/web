package go.home.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import go.home.project.dao.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDao rd;

}
