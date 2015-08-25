package cn.zogo.index.common;

import javax.jdo.PersistenceManager;

import cn.zogo.index.admin.dao.AdminDAO;
import cn.zogo.index.admin.dao.ImageDAO;
import cn.zogo.index.admin.dao.NewsDAO;
import cn.zogo.index.admin.dao.ProductDAO;
/**
 * 
 * @author Declan
 *
 */
public class ZogoContext {
	private static ImageDAO imageDAO = new ImageDAO();
	private static AdminDAO adminDAO = new AdminDAO();
	private static NewsDAO newsDAO = new NewsDAO();
	private static ProductDAO proDAO = new ProductDAO();
	private static PersistenceManager pm = PMF.get().getPersistenceManager();

	public static PersistenceManager getPM(){
		return pm;
	}
	
	public static ImageDAO getImageDAO(){
		return imageDAO;
	}
	public static AdminDAO getAdaminDAO(){
		return adminDAO;
	}
	
	public static NewsDAO getNewsDAO(){
		return newsDAO;
	}
	
	public static ProductDAO getProductDAO(){
		return proDAO;
	}
}
