package cn.zogo.index.admin.dao;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import cn.zogo.index.admin.dto.News;
import cn.zogo.index.admin.dto.Product;

public class ProductDAO {

	public Product add(PersistenceManager pm, Product product) {
		return pm.makePersistent(product);
	}

	public Product find(PersistenceManager pm, Long id) {
		return pm.getObjectById(Product.class,id);
	}

	@SuppressWarnings("unchecked")
	public List<Product> list(PersistenceManager pm, int pageSize,int pageNumber) {
		Query query = pm.newQuery(Product.class);
		query.setRange((pageNumber-1)*pageSize, pageSize*pageNumber+1);
		query.setOrdering("date desc");
		return (List<Product>)query.execute();
	}
	
	public List<Product> listTop(PersistenceManager pm,int i){
		Query query = pm.newQuery(Product.class);
		query.setRange(0, i);
		query.setOrdering("date desc");
		return (List<Product>)query.execute();
	}
	
	public void remove(PersistenceManager pm, Long id) {
		Product pro = pm.getObjectById(Product.class,id);
		pm.deletePersistent(pro);
	}

	public boolean update(PersistenceManager pm, Product pro) {
		Product p = pm.getObjectById(Product.class,pro.getId());
		p.setContext(pro.getContext());
		p.setTitle(pro.getTitle());
		p.setType(pro.getType());
		p.setShortimg(pro.getShortimg());
		p.setImg(pro.getImg());
		return true;
	}

}
