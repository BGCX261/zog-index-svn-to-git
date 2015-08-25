package cn.zogo.index.admin.dto;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Product {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	
	@Persistent
	private String title;
	
	@Persistent
	private String shortimg;
	
	@Persistent
	private String img;
	
	@Persistent
	private Date date;
	
	@Persistent
	private String type;
	
	@Persistent
	private String context;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getShortimg() {
		return shortimg;
	}

	public void setShortimg(String shortimg) {
		this.shortimg = shortimg;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public Product(Long id, String title, String shortimg, String img,
			Date date, String type, String context) {
		super();
		this.id = id;
		this.title = title;
		this.shortimg = shortimg;
		this.img = img;
		this.date = date;
		this.type = type;
		this.context = context;
	}

	public Product() {
		super();
	}
	
	
	
}
