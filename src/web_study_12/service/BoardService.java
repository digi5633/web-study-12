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
	
	public int addBoard(Board board) {
		return dao.insertBoard(board);
	}
	
	public int removeBoard(String board) {
		return dao.deleteBoard(board);
	}

	public int modifyBoard(Board board) {
		return dao.updateBoard(board);
	}
	
	public Board getBoardNum(String board) {
		return dao.selectBoardByNum(board);
	}
	
	public Board checkPass(String pass, String num) {
		return dao.checkPassword(pass, num);
	}

}
