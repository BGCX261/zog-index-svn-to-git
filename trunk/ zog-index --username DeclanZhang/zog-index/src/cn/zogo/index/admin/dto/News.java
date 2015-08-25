package cn.zogo.index.admin.dto;

import java.util.Date;
import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Text;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class News {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	
	@Persistent
	private String title;
	
	@Persistent
	private Text content;
	
	@Persistent
	private List<String> pics;
	
	@Persistent
	private Date date;
	
	@Persistent
	private String author;
	
	@Persistent
	private String type;

	@Persistent
	private String typeNum;
	
	public News() {
		super();
	}



	public News(Long id, String title, Text content, List<String> pics,
			Date date, String author, String type, String typeNum) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pics = pics;
		this.date = date;
		this.author = author;
		this.type = type;
		this.typeNum = typeNum;
	}



	public String getTypeNum() {
		return typeNum;
	}



	public void setTypeNum(String typeNum) {
		this.typeNum = typeNum;
	}



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

	public Text getContent() {
		return content;
	}

	public void setContent(Text content) {
		this.content = content;
	}

	public List<String> getPics() {
		return pics;
	}

	public void setPics(List<String> pics) {
		this.pics = pics;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
