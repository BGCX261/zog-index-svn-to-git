package cn.zogo.index.admin.dao;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import cn.zogo.index.admin.dto.News;

public class NewsDAO {

	public News add(PersistenceManager pm, News news) {
		return pm.makePersistent(news);
	}

	public News find(PersistenceManager pm, Long id) {
		return pm.getObjectById(News.class,id);
	}

	@SuppressWarnings("unchecked")
	public List<News> list(PersistenceManager pm, int pageSize,int pageNumber) {
		Query query = pm.newQuery(News.class);
		query.setRange((pageNumber-1)*pageSize, pageSize*pageNumber+1);
		query.setOrdering("date desc");
		return (List<News>)query.execute();
	}

	@SuppressWarnings("unchecked")
	public List<News> listType(PersistenceManager pm, String typeNum, int pageSize,int pageNumber) {
		Query query = pm.newQuery(News.class);
		query.setFilter("typeNum == typeNumP");
		query.setOrdering("date desc");
		query.declareParameters("String typeNumP");
		query.setRange((pageNumber-1)*pageSize, pageSize*pageNumber+1);
		return (List<News>)query.execute(typeNum);
	}

	public List<News> listTop(PersistenceManager pm,int i){
		Query query = pm.newQuery(News.class);
		query.setRange(0, i);
		query.setOrdering("date desc");
		return (List<News>)query.execute();
	}
	
	public void remove(PersistenceManager pm, Long id) {
		News news = pm.getObjectById(News.class,id);
		pm.deletePersistent(news);
	}

	public boolean update(PersistenceManager pm, News news) {
		News n = pm.getObjectById(News.class,news.getId());
		n.setContent(news.getContent());
		n.setPics(news.getPics());
		n.setTitle(news.getTitle());
		n.setType(news.getType());
		return true;
	}
	
}
