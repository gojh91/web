package oracle.java.meal_ting.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;

@Repository
public class ResInfoDaoImpl implements ResInfoDao{

	@Autowired
	private SqlSession session; // sql문을 호출
	
		// ResInfo.xml -> ID는 "mainPageList", parameterType(ri), return List
	public List<ResInfo> mainpage(ResInfo ri) {
		return session.selectList("JhmainPageList", ri);
	}
	
	public List<ResInfo> likeCnt(ResInfo ri) {
		return session.selectList("JhlikeCnt", ri);
	}

	
	
	public ResInfo getInfo(int res_num) {
		return session.selectOne("HgSelectResInfo", res_num);
	}

	
	public List<ResInfo> mainList() {
		System.out.println("mainList DAOIMPL실행");
		return session.selectList("JhMainList");
	}


	public List<ResInfoBoard> bestInfo() {
		return session.selectList("JhbestInfo");
	}
	

	public List<Menu> getMenuInfo(int res_num) {
		return session.selectList("HgSelectMenuInfo", res_num);
	}

	public List<ResInfoBoard> reviewRanking() {
	
		return session.selectList("ReviewRanking");
	}

	public List<ResInfoBoard> scoreRanking() {
		
		return session.selectList("ScoreRanking");
	}

	@Override
	public List<ResInfoBoard> mealTingRanking() {
		return session.selectList("MealTingRanking");
	}





	
	
	
	
	
	
	
	/*
	public List<RankingList> rankingList() {

			List<RankingList> rankingList = null; // ResInfo와 Board객체가 있는 RankingList 선언(null 초기화)
			List<ResInfo> resInfoList;			  // ResInfo객체를 가지고 있는 resInfoList선언
			Board board;						  // Board 객체선언
			ResInfo resInfo;					  // ResInfo 객체선언

			rankingList = new ArrayList<RankingList>();
			
			
			resInfoList = session.selectList("Jhcase1ResInfoList");
			// ResInfo에 id가 "Jhcase1ResInfoList"인 sql결과값을 x저장.
			// 가게번호, 이름, 주소, 평점, 좋아요
			
			Iterator<ResInfo> riItr = resInfoList.iterator();
			// ResInfo객체를 가지고 있는 Iterator선언 
			
			while(riItr.hasNext())
			{
				RankingList rl = new RankingList();  
				
				resInfo = riItr.next();
				int res_num = resInfo.getRes_num();
				String res_name = resInfo.getRes_name();
				String res_addr = resInfo.getRes_addr();
				double res_score = resInfo.getRes_score();
				int res_likeCnt = resInfo.getRes_likeCnt();
				
				
				board = session.selectOne("Jhcase1Board", res_num);
				
				rl.setResInfo(resInfo);
				rl.setBoard(board);
				rankingList.add(rl);
			}
			
		
		
		return rankingList;
	}*/
	
}
