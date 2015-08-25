package cn.zogo.index.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zogo.index.admin.dto.Image;
import cn.zogo.index.common.PMF;
import cn.zogo.index.common.ZogoContext;

public class ImgServlet extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String sid = req.getParameter("id");
		sid=sid==null?"1":sid;
		Long id = Long.parseLong(sid);
		
		String m = req.getParameter("m");
		
		// 获取图片
		if(m==null){
			Image img = ZogoContext.getImageDAO().find(pm, id);
			resp.setContentType("image/jpeg");
			ServletOutputStream out = resp.getOutputStream();
			byte[] b = img.getImg().getBytes();
			out.write(b);
			out.flush();
		// 获取文字
		}else{
			String text = ZogoContext.getImageDAO().getText(pm, id);
			resp.setContentType("text/plain");
			PrintWriter pw = resp.getWriter();
			pw.write(text);
			pw.flush();
		}
		
		pm.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
