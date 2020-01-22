package glim.spring.dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import glim.spring.dto.MemberDTO;

@Repository
public class MemberDAO {
   
   @Autowired
   private SqlSessionTemplate jdbc;
   
   
   //회원가입
   public int insert(MemberDTO dto) {
      return jdbc.insert("Member.insert",dto);
   }
   
   //아이디 중복체크
   public int overlap(String id) {
      return jdbc.selectOne("Member.overlap", id);
   }
   
   //로그인
   public int loginOk(String id, String pw) {
      Map<String, String> param = new HashMap<>();
      param.put("id", id);
      param.put("pw", pw);
      return jdbc.selectOne("Member.loginOk", param);
   }
   
   //내 정보 조회
   public MemberDTO myInfo(String nickname) {
      return jdbc.selectOne("Member.myInfo", nickname);
   }
   
   //회원 목록 조회
   public List<MemberDTO> memberList(){
      return jdbc.selectList("Member.memberList");
   }
   
   //작가페이지
   public MemberDTO writerInfo(String nickname) {
	   return jdbc.selectOne("Member.writerInfo", nickname);
   }
   
   //회원탈퇴
   public int memberOut(String id) {
      return jdbc.delete("Member.memberOut", id);
   }
   
   // 내 정보 수정
   public int myModify(MemberDTO dto, String id) {
      return jdbc.update("Member.myModify", dto);
   }
   
  
}