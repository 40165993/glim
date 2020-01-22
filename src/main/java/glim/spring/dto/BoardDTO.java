package glim.spring.dto;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class BoardDTO {
	
	private int seq;
	private String nickname;
	private String category;
	private int views;
	private String writeDate;
	private String title;
	private String text;
	private MultipartFile[] file;
	private String fileName;
	private String OriFileName;
	
	public BoardDTO(int seq, String nickname, String category, int views, String writeDate, String title, String text,
			MultipartFile[] file, String fileName, String oriFileName) {
		super();
		this.seq = seq;
		this.nickname = nickname;
		this.category = category;
		this.views = views;
		this.writeDate = writeDate;
		this.title = title;
		this.text = text;
		this.file = file;
		this.fileName = fileName;
		OriFileName = oriFileName;
	}
	public MultipartFile[] getFile() {
		return file;
	}
	public void setFile(MultipartFile[] file) {
		this.file = file;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOriFileName() {
		return OriFileName;
	}
	public void setOriFileName(String oriFileName) {
		OriFileName = oriFileName;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public BoardDTO(int seq, String nickname, String category, int views, String writeDate, String title, String text) {
		super();
		this.seq = seq;
		this.nickname = nickname;
		this.category = category;
		this.views = views;
		this.writeDate = writeDate;
		this.title = title;
		this.text = text;
	}
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	
}