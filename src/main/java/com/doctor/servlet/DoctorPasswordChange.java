package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;

import com.db.DBConnect;

@WebServlet("/doctchangepassword")
public class DoctorPasswordChange extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int uid = Integer.parseInt(req.getParameter("uid"));
		String oldpassword= req.getParameter("oldpassword");
		String newpassword= req.getParameter("newpassword");
		
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		HttpSession session= req.getSession();
		
		if(dao.checkOldPassword(uid, oldpassword))
		{
			
			if(dao.changePassword(uid, newpassword))
			{
				session.setAttribute("succMsg", "Password Change Succesfully");
				resp.sendRedirect("doctor/edit_profile.jsp");
				
			}else {
				
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("doctor/edit_profile.jsp");
				
			}
			
		} else {
			
			session.setAttribute("errorMsg", "old Password incorrect");
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
		
		
	}

}
