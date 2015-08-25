package cn.zogo.index.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zogo.index.admin.dto.Admin;
import cn.zogo.index.admin.dto.Image;
import cn.zogo.index.admin.dto.News;
import cn.zogo.index.admin.dto.Product;
import cn.zogo.index.common.PMF;
import cn.zogo.index.common.ZogoContext;

import com.google.appengine.api.datastore.Text;

public class AdminServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PersistenceManager pm2 = ZogoContext.getPM();
		
		String t = req.getParameter("t");
		String m = req.getParameter("m");
		PrintWriter pw = resp.getWriter();
		
		
		// news
		if("n".equals(t)){
			// list
			if ("l".equals(m)){
				String page = req.getParameter("page");
				String size = req.getParameter("size");
				page = page==null?"1":page;
				size = size==null?"10":size;
				
				int pageNumber = Integer.parseInt(page);
				int pageSize = Integer.parseInt(size);
				
				List<News> list = ZogoContext.getNewsDAO().list(pm, pageSize, pageNumber);
				
				String pre = pageNumber==1?"":pageNumber-1+"";
				String next = "";
				
				if(list.size()==(pageSize+1)){
					next = pageNumber+1+"";
				}
				
				req.setAttribute("pre", pre);
				req.setAttribute("next", next);
				req.setAttribute("list", list);
				req.getRequestDispatcher("/news.jsp").forward(req, resp);
			}
			// add
			else if("a".equals(m)){
				String title = req.getParameter("title");
				String context = req.getParameter("context");
				String type = req.getParameter("type");
				String typeNum = req.getParameter("typeNum");
				String[] pics = req.getParameterValues("pics");
				
				News news = new News();
				news.setAuthor(((Admin)req.getSession().getAttribute("admin")).getUsername());
				news.setDate(new Date());
				if(null!=pics && !"".equals(pics)){
					news.setPics(Arrays.asList(pics));
				}
				news.setTitle(title);
				news.setType(type);
				news.setTypeNum(typeNum);
				news.setContent(new Text(context));
				
				news = ZogoContext.getNewsDAO().add(pm, news);
				
				List<News> indexnews = ZogoContext.getNewsDAO().listTop(pm2, 4);
				this.getServletContext().setAttribute("indexnews", indexnews);
				
				pw.print(news.getId());
			}
			// delete
			else if("d".equals(m)){
				Long id = Long.parseLong(req.getParameter("id"));
				ZogoContext.getNewsDAO().remove(pm, id);
				
				List<News> indexnews = ZogoContext.getNewsDAO().listTop(pm2, 4);
				this.getServletContext().setAttribute("indexnews", indexnews);
			}
			
		// product
		}else if("p".equals(t)){
			// list
			if ("l".equals(m)){
				String page = req.getParameter("page");
				String size = req.getParameter("size");
				page = page==null?"1":page;
				size = size==null?"10":size;
				
				int pageNumber = Integer.parseInt(page);
				int pageSize = Integer.parseInt(size);
				
				List<Product> list = ZogoContext.getProductDAO().list(pm, pageSize, pageNumber);
				
				String pre = pageNumber==1?"":pageNumber-1+"";
				String next = "";
				
				if(list.size()==(pageSize+1)){
					next = pageNumber+1+"";
				}
				
				req.setAttribute("pre", pre);
				req.setAttribute("next", next);
				req.setAttribute("list", list);
				req.getRequestDispatcher("/pro.jsp").forward(req, resp);
			}
			// add
			else if("a".equals(m)){
				String title = req.getParameter("title");
				String context = req.getParameter("context");
				String type = req.getParameter("type");
				String img = req.getParameter("img");
				String shortimg = req.getParameter("shortimg");
				
				Product pro = new Product();
				pro.setDate(new Date());
				pro.setTitle(title);
				pro.setContext(context);
				pro.setImg(img);
				pro.setShortimg(shortimg);
				pro.setType(type);
				
				pro = ZogoContext.getProductDAO().add(pm, pro);
				
				List<Product> indexpros = ZogoContext.getProductDAO().listTop(pm2, 4);
				this.getServletContext().setAttribute("indexpros", indexpros);
				
				pw.print(pro.getId());
			}
			// delete
			else if("d".equals(m)){
				Long id = Long.parseLong(req.getParameter("id"));
				ZogoContext.getProductDAO().remove(pm, id);
				
				List<Product> indexpros = ZogoContext.getProductDAO().listTop(pm2, 4);
				this.getServletContext().setAttribute("indexpros", indexpros);
			}
		
		// img	
		}else if("i".equals(t)){
			// update
			if("u".equals(m)){
				String text = req.getParameter("text");
				Long id = Long.parseLong(req.getParameter("id"));
				Image image = new Image();
				image.setId(id);
				image.setText(text);
				ZogoContext.getImageDAO().update(pm, image);
			// delete
			}else if("d".equals(m)){
				Long id = Long.parseLong(req.getParameter("id"));
				ZogoContext.getImageDAO().remove(pm, id);
			}
			
		}
		
		pm.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
