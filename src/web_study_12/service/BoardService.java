package web_study_12.service;

import java.sql.Connection;
import java.util.List;

import web_study_12.dao.BoardDao;
import web_study_12.dao.impl.BoardDaoImpl;
import web_study_12.ds.JndiDS;
import web_study_12.dto.Board;

public class BoardService {

	private static Connection con;
	private BoardDao dao;

	public BoardService() {
		con = JndiDS.getConnection();
		dao = BoardDaoImpl.getInstance();
		((BoardDaoImpl) dao).setCon(con);
	}
	
	public List<Board> showBoard() {
		return dao.selectBoardByAll();
	}
	
	public int insertBoard(Board board) {
		return dao.insertBoard(board);
	}
	
	public int removeBoard(int board) {
		return dao.deleteBoard(board);
	}

	public int modifyBoard(Board board) {
		return dao.updateBoard(board);
	}
	
	public Board getBoardNum(int board) {
		return dao.selectBoardByNum(board);
	}
	
	public Board checkPassword(String pass, int num) {
		return dao.checkPassword(pass, num);
	}

}
