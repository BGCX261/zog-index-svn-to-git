package cn.zogo.index.servlet;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zogo.index.admin.dto.News;
import cn.zogo.index.admin.dto.Product;
import cn.zogo.index.common.PMF;
import cn.zogo.index.common.ZogoContext;

public class InitServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String t = req.getParameter("t");
		
		if("p".equals(t)){
			Long id = Long.parseLong(req.getParameter("id"));
			Product p = ZogoContext.getProductDAO().find(pm, id);
			req.setAttribute("p", p);
			req.getRequestDispatcher("/sigWork.jsp").forward(req, resp);
		}
		if("ps".equals(t)){
			String page = req.getParameter("page");
			
			page = page==null?"1":page;
			
			int pageNumber = Integer.parseInt(page);
			
			List<Product> list = ZogoContext.getProductDAO().list(pm, 9, pageNumber);
			String pre = pageNumber==1?"":pageNumber-1+"";
			String next = "";
			
			if(list.size()==11){
				next = pageNumber+1+"";
			}
			
			req.setAttribute("pre", pre);
			req.setAttribute("next", next);
			req.setAttribute("list", list);
			req.getRequestDispatcher("/worksList.jsp").forward(req, resp);
		}
		
		if("n".equals(t)){
			Long id = Long.parseLong(req.getParameter("id"));
			News n = ZogoContext.getNewsDAO().find(pm, id);
			req.setAttribute("n", n);
			req.getRequestDispatcher("/sigNews.jsp").forward(req, resp);
		}
		
		if("ns".equals(t)){
			String page = req.getParameter("page");
			String type = req.getParameter("type");
			
			page = page==null?"1":page;
			
			int pageNumber = Integer.parseInt(page);
			
			List<News> list = null;
			if(type==null){
				list = ZogoContext.getNewsDAO().list(pm, 10, pageNumber);
			}else{
				list = ZogoContext.getNewsDAO().listType(pm, type, 10, pageNumber);
				req.setAttribute("type", type);
			}
			
			String pre = pageNumber==1?"":pageNumber-1+"";
			String next = "";
			
			if(list.size()==11){
				next = pageNumber+1+"";
			}
			
			req.setAttribute("pre", pre);
			req.setAttribute("next", next);
			req.setAttribute("list", list);
			req.getRequestDispatcher("/newsList.jsp").forward(req, resp);
		}
	}
	
}
