package cn.zogo.index.admin.dao;

import javax.jdo.PersistenceManager;

import cn.zogo.index.admin.dto.Image;

public class ImageDAO {

	public Image add(PersistenceManager pm, Image image) {
		return pm.makePersistent(image);
	}

	public Image find(PersistenceManager pm, Long id) {
		return pm.getObjectById(Image.class,id);
	}

	public void remove(PersistenceManager pm, Long id) {
		Image image = pm.getObjectById(Image.class,id);
		pm.deletePersistent(image);
	}
	
	public void update(PersistenceManager pm, Image image){
		Image newImg = pm.getObjectById(Image.class,image.getId());
		newImg.setText(image.getText());
	}
	
	public String getText(PersistenceManager pm, Long id) {
		Image image = pm.getObjectById(Image.class,id);
		String text = image.getText();
		return text==null?"":text;
	}
}
