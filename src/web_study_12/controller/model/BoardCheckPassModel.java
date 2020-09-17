package web_study_12.controller.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_study_12.controller.Command;
import web_study_12.dto.Board;
import web_study_12.service.BoardService;

public class BoardCheckPassModel implements Command {

	private BoardService service = new BoardService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("GET");

			String url = null;

			int boardNum = Integer.parseInt(request.getParameter("num").trim());
			String boardPass = request.getParameter("pass").trim();
			System.out.println("boardNum > " + boardNum + ", boardPass > " + boardPass);
			Board checkPass = service.checkPassword(boardPass, boardNum);
			System.out.println("checkPass > " + checkPass);

			Board getNum = service.getBoardNum(boardNum);
			
			if (getNum.getPass().equals(boardPass)) { // 성공
				url = "board/checkSuccess.jsp";
			} else { // 실패
				url = "board/boardCheckPass.jsp";
				request.setAttribute("message", "비밀번호가 틀렸습니다.");
			}
			return url;

			/*
			if (checkPass == null) {	// 실패
				url = "board/boardCheckPass.jsp";
				request.setAttribute("message", "비밀번호가 틀렸습니다.");
			} else  {	// 성공
				url = "board/checkSuccess.jsp";
			}
			return url;
			*/

		} else {
			System.out.println("POST");
		}
		return null;

	}

}
