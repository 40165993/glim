package glim.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import glim.spring.dto.MemberDTO;

@Repository
public class adminDAO {
	
	@Autowired
	private SqlSessionTemplate jdbc;
	
	//회원목록출력
	public List<MemberDTO> memberList()throws Exception{
		return jdbc.selectList("admin.memberList");
	}
	
	//차단된회원목록출력
	public List<MemberDTO> vanList()throws Exception{
		return jdbc.selectList("admin.vanList");
	}
	
	//회원차단
	public int van(String id)throws Exception{
		return jdbc.update("admin.van", id);
	}
	
	//회원차단취소
	public int cancleVan(String id)throws Exception{
		return jdbc.update("admin.cancleVan", id);
	}

}
