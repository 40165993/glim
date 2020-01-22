package glim.spring.dto;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class FileListDTO {
	private int boardSeq;
	private int photoSeq;
	private MultipartFile[] file;
	private String oriName;
	private String sysName;
	private String filePath;
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
	public MultipartFile[] getFile() {
		return file;
	}
	public void setFile(MultipartFile[] file) {
		this.file = file;
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
	public FileListDTO(int boardSeq, int photoSeq, MultipartFile[] file, String oriName, String sysName,
			String filePath) {
		super();
		this.boardSeq = boardSeq;
		this.photoSeq = photoSeq;
		this.file = file;
		this.oriName = oriName;
		this.sysName = sysName;
		this.filePath = filePath;
	}
	public FileListDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
