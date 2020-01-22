package glim.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import glim.spring.dao.adminDAO;
import glim.spring.dto.MemberDTO;

@Service
public class adminService {

	@Autowired
	private MemberDTO memberdto;
	@Autowired
	private adminDAO admindao;
	
	//회원출력
	public List<MemberDTO> memberList(){
		List<MemberDTO> list = null;
		try {
			list = admindao.memberList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	//차단된 회원출력
	public List<MemberDTO> vanList(){
		List<MemberDTO> list = null;
		try {
			list = admindao.vanList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	//회원차단
	public void van(String id) {
		try {
			admindao.van(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//회원차단해제
	public void cancleVan(String id) {
		try {
			admindao.cancleVan(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
