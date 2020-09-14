package web_study_12.controller.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_study_12.controller.Command;
import web_study_12.dto.Board;
import web_study_12.service.BoardService;

public class BoardWriteModel implements Command {

	private BoardService service = new BoardService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*	Board board = new Board();
			board.setPass(request.getParameter("PASS"));
			board.setName(request.getParameter("NAME"));
			board.setEmail(request.getParameter("EMAIL"));
			board.setTitle(request.getParameter("TITLE"));
			board.setContent(request.getParameter("CONTENT"));
		
			int res = service.addBoard(board);
			System.out.println(board);
		
			response.getWriter().print(res);*/

		return "/board/boardWrite.jsp";

	}

}
