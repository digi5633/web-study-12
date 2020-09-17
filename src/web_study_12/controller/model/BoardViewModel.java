package web_study_12.controller.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_study_12.controller.Command;
import web_study_12.dto.Board;
import web_study_12.service.BoardService;

public class BoardViewModel implements Command {

	private BoardService service = new BoardService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("GET");

			int boardNum = Integer.parseInt(request.getParameter("num").trim());
			System.out.println("boardNum > " + boardNum);

			service.updateReadCount(boardNum);
			
			Board getBoard = service.getBoardNum(boardNum);
			System.out.println("getBoard > " + getBoard);

			request.setAttribute("getBoard", getBoard);
			return "board/boardView.jsp";

		} else {
			System.out.println("POST");

		}
		return null;
	}

}
