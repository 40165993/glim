package glim.spring.dto;

import org.springframework.stereotype.Repository;

@Repository
public class CommentsDTO {
	
	private int boardSeq;
	private int commentsSeq;
	private String writer;
	private String text;
	private String writeDate;
	
	
	public int getBoardSeq() {
		return boardSeq;
	}
	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}
	public int getCommentsSeq() {
		return commentsSeq;
	}
	public void setCommentSeq(int commentsSeq) {
		this.commentsSeq = commentsSeq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public CommentsDTO(int boardSeq, int commentsSeq, String writer, String text, String writeDate) {
		super();
		this.boardSeq = boardSeq;
		this.commentsSeq = commentsSeq;
		this.writer = writer;
		this.text = text;
		this.writeDate = writeDate;
	}
	public CommentsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
