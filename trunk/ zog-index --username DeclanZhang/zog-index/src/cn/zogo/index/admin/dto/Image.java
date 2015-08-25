package cn.zogo.index.admin.dto;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Blob;
@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class Image {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private Blob img;
	@Persistent
	private Date date;
	@Persistent	
	private String text;
	public Image(Long id, Blob img, Date date, String text) {
		super();
		this.id = id;
		this.img = img;
		this.date = date;
		this.text = text;
	}
	public Image() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
	
	
	
	
	
	
}
