package com.smhrd3.resultcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd3.resultmodel.resultDAO;
import com.smhrd3.resultmodel.resultDTO;

@WebServlet("/selectR")
public class selectR extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		resultDTO dto = new resultDTO();
		resultDAO dao = new resultDAO();
		resultDTO selectR = dao.selectR(dto);
		request.setAttribute("selectR", selectR);
		System.out.println(dto);
		RequestDispatcher rd = request.getRequestDispatcher("index_testImg.jsp");
		rd.forward(request, response);
		
		
	}

}
