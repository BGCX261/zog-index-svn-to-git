package cn.zogo.index.common;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import cn.zogo.index.admin.dto.News;
import cn.zogo.index.admin.dto.Product;

public class ZogoListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		PersistenceManager pm = ZogoContext.getPM();
		ServletContext sc = sce.getServletContext();
		List<News> indexnews = ZogoContext.getNewsDAO().listTop(pm, 4);
		List<Product> indexpros = ZogoContext.getProductDAO().listTop(pm, 4);
		sc.setAttribute("indexnews", indexnews);
		sc.setAttribute("indexpros", indexpros);
	}

}
