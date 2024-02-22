package com.smhrd3.postcontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd3.postmodel.PostDAO;
import com.smhrd3.postmodel.PostDTO;

@WebServlet("/selectAllPost")
public class selectAllPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PostDAO dao = new PostDAO();
		List<PostDTO> postList = dao.selectAllPost();
		request.setAttribute("postList", postList);
		RequestDispatcher rd = request.getRequestDispatcher("index_main.jsp");
		rd.forward(request, response);
		
	}

}
