package cn.zogo.index.servlet;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.zogo.index.admin.dto.Admin;
import cn.zogo.index.common.PMF;
import cn.zogo.index.common.ZogoContext;

public class LoginServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String loginname = req.getParameter("loginname");
		String password = req.getParameter("password");

		Admin admin = ZogoContext.getAdaminDAO().find(pm, loginname, password);

		HttpSession session = req.getSession();
		
		if(admin!=null){
			session.setAttribute("admin", admin);
			resp.sendRedirect("/p?p=admin");
		}else{
			req.setAttribute("message", "太失败了,居然没进去! ");
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}
		
		pm.close();
		
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
