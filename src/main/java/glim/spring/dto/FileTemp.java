package glim.spring.dto;

import java.io.File;

public class FileTemp {
	
	private int boardSeq;
	private int photoSeq;
	private String oriName;
	private String sysName;
	private String filePath;
	private File f;
	public int getBoardSeq() {
		return boardSeq;
	}
	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}
	public int getPhotoSeq() {
		return photoSeq;
	}
	public void setPhotoSeq(int photoSeq) {
		this.photoSeq = photoSeq;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public File getF() {
		return f;
	}
	public void setF(File f) {
		this.f = f;
	}
	public FileTemp(int boardSeq, int photoSeq, String oriName, String sysName, String filePath, File f) {
		super();
		this.boardSeq = boardSeq;
		this.photoSeq = photoSeq;
		this.oriName = oriName;
		this.sysName = sysName;
		this.filePath = filePath;
		this.f = f;
	}
	public FileTemp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	

}
