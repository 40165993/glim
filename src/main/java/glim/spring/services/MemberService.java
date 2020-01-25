package glim.spring.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import glim.spring.dao.MemberDAO;
import glim.spring.dto.GudokDTO;
import glim.spring.dto.MemberDTO;

@Service
public class MemberService {
   
   @Autowired
   private MemberDAO dao;
   
    @Autowired
   private HttpSession session;
    
    @Autowired
    private HttpServletRequest request;
   
   //회원가입
   public int signUpInsert(MemberDTO dto) {
      return dao.insert(dto);
   }
   
   //아이디중복체크
   public int overlap(String id) {
      return dao.overlap(id);
   }
   
   //닉네임중복체크
   public int overlapNickname(String nickname) {
	   return dao.overlapNickname(nickname);
   }
   
   //로그인
   public int loginOk(String id, String pw) {
      int result = dao.loginOk(id, pw);
      return result; 
   }
   
   
   //내 정보 조회
   public MemberDTO myInfo(String nickname) {
      MemberDTO result = dao.myInfo(nickname);
      return result;
   }
   
   
   //회원탈퇴
   public String memberOut(String id) {
      int result = dao.memberOut(id);
      return "result";
   }
   
   //회원정보 수정
   public String myModify(Model model, String id) {
      MemberDTO result = dao.myInfo(id);
      return "result";
   }
   
   //회원 정보 수정
   public int myModifyProc(MemberDTO dto, String id) {
      int result = dao.myModify(dto, id);
      return result;
   }
   
   //작가정보출력
   public MemberDTO writerInfo(String nickname) {
	   MemberDTO dto = dao.writerInfo(nickname);
	   return dto;
   }
   
  
}