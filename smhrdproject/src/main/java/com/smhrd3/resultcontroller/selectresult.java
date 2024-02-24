package com.smhrd3.resultcontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd3.resultmodel.resultDAO;
import com.smhrd3.resultmodel.resultDTO;

@WebServlet("/selectresult")
public class selectresult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		resultDAO dao = new resultDAO();
		List<resultDTO> resultList = dao.selectResult();
		request.setAttribute("resultList", resultList);
		RequestDispatcher rd = request.getRequestDispatcher("index_mypage.jsp");
		rd.forward(request, response);
	}

}
