package glim.spring.dto;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private String birth;
	private String phone;
	private String signDate;
	private String vanList;
	private String writerInfo;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSignDate() {
		return signDate;
	}
	public void setSignDate(String signDate) {
		this.signDate = signDate;
	}
	public String getVanList() {
		return vanList;
	}
	public void setVanList(String vanList) {
		this.vanList = vanList;
	}
	public String getWriterInfo() {
		return writerInfo;
	}
	public void setWriterInfo(String writerInfo) {
		this.writerInfo = writerInfo;
	}
	public MemberDTO(String id, String pw, String name, String nickname, String birth,  String phone,
			String signDate, String vanList, String writerInfo) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.birth = birth;
		this.phone = phone;
		this.signDate = signDate;
		this.vanList = vanList;
		this.writerInfo = writerInfo;
	}
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
}