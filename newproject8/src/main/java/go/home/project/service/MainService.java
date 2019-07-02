package go.home.project.service;

import java.util.List;

import go.home.project.model.Board;
import go.home.project.model.Menu;
import go.home.project.model.Reply;
import go.home.project.model.ResInfo;
import go.home.project.model.ResInfoBoard;

public interface MainService {
	List<Menu> searchmenu(String keyword);
	int searchmenu1(String keyword);
	List<Reply> searchreply(String keyword);
	int searchreply1(String keyword);
	List<Board> searchboard(String keyword);
	int searchboard1(String keyword);
	List<ResInfo> searchresinfo(String keyword);
	int searchresinfo1(String keyword);
	List<ResInfoBoard> searchresinfoboard(String keyword);
	int searchresinfoboard1(String keyword);
}
