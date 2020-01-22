package glim.spring.dto;

import org.springframework.stereotype.Repository;

@Repository
public class GudokDTO {
	private String id;
	private String gudok;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGudok() {
		return gudok;
	}
	public void setGudok(String gudok) {
		this.gudok = gudok;
	}
	public GudokDTO(String id, String gudok) {
		super();
		this.id = id;
		this.gudok = gudok;
	}
	public GudokDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
