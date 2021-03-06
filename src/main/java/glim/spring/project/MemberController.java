package glim.spring.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import glim.spring.dto.BoardDTO;
import glim.spring.dto.GudokDTO;
import glim.spring.dto.MemberDTO;
import glim.spring.services.BoardService;
import glim.spring.services.MemberService;
import glim.spring.services.adminService;

@RequestMapping("/member")
@Controller
public class MemberController {
   
   @Autowired
   private MemberService service;
   
   @Autowired
   private HttpSession session;
   
   @Autowired
   private BoardService boardService;
   
   @Autowired
   private adminService adminservice;
   
   @RequestMapping("/signUp.mem")
   public String signUp( Model model) {
      System.out.println("signUp 잘도착");
      return "/member/signUp";
   }
   
   //회원가입
   @RequestMapping("/signUpProc.mem")
   public String signUpPorc(MemberDTO dto, Model model) {
	   dto.getId().replace("<", "&lt;");
		dto.getName().replace("<", "&lt;");
		dto.getBirth().replace("<", "&lt;");
		dto.getPw().replace("<", "&lt;");
		dto.getNickname().replace("<", "&lt;");
		dto.getPhone().replace("<", "&lt;");
		dto.getWriterInfo().replace("<", "&lt;");
    int insert = service.signUpInsert(dto);
          List<BoardDTO> list = boardService.selectAll();
    		model.addAttribute("list", list);
             return "index";
   }
   //아이디 중복체크
   @RequestMapping(value="/overlap.mem",produces="text/html; charset=UTF-8")
   @ResponseBody
   public String overlap(String id) {
      System.out.println("overlap 잘도착"+id);
    int result = service.overlap(id);
    System.out.println(result);
      return "{\"result\":" + result + "}";
   }
   
   //닉네임중복체크
   @RequestMapping(value="/overlapNickname.mem", produces="text/html; charset=UTF-8")
   @ResponseBody
   public String overlapNickname(String nickname) {
	   System.out.println("중복체크도착");
	   System.out.println("닉네임 중복체크 : " + nickname);
   int result = service.overlapNickname(nickname);
   System.out.println("닉네임 result : " + result);
   return "{\"result\":" + result + "}";
   }
   
   
   
   //로그인
   @RequestMapping("login.mem")
      public String login(String id, String pw, Model model) { 
	   id.replace("<", "&lt;");
	   pw.replace("<", "&lt;");
	   int result = service.loginOk(id, pw);
	   System.out.println("결과는 :  " + result);
	   if(result ==1 ) {
	   MemberDTO dto = service.myInfo(id);//내정보저장
      session.setAttribute("loginInfo", dto);}
      List<BoardDTO> list = boardService.selectAll();//
      model.addAttribute("list", list);
      model.addAttribute("result", result);
         return "/member/loginProc";
      }
    
   
  
   //로그아웃
   @RequestMapping("logout.mem")
      public String logout(String id, Model model) {
      System.out.println("logout 도착");
      session.invalidate();
      List<BoardDTO> list = boardService.selectAll();
   		model.addAttribute("list", list);
      return "index";
   }
   
   //내 정보 조회
   @RequestMapping("/myInfo.mem")
   public String myInfo(Model model) {
      System.out.println("myInfo 도착");
      MemberDTO id = (MemberDTO) session.getAttribute("loginInfo");
     
      MemberDTO result = service.myInfo(id.getId());//내정보출력
      model.addAttribute("result", result);
      return "/member/info";                                                                                                                                                                                                                                                                                       
   }
   
   //구독중인작가
   @RequestMapping("/membergudok.mem")
   public String gudokList(Model model) {
	   MemberDTO id = (MemberDTO) session.getAttribute("loginInfo");
	   List<GudokDTO> list = boardService.gudokList(id.getId());//구독중인작가출력
	   model.addAttribute("list", list);
	   return "/member/gudok";
   }

   //회원탈퇴
   @RequestMapping("/memberOut.mem")
   public String memberOut(Model model) {
      System.out.println("memberOut 도착");
      MemberDTO id = (MemberDTO)session.getAttribute("loginInfo");
      String result = service.memberOut(id.getId());
      boardService.memberOutDelete(id.getNickname());
      session.invalidate();
      model.addAttribute("result",result);
      return "index";
   }
   
   
   //내정보수정
   @RequestMapping("/myModify.mem")
   public String myModify(MemberDTO DTO, Model model) {   
	  MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
      MemberDTO result = service.myInfo(loginInfo.getId());
      boardService.selectNickname(loginInfo.getNickname());
      model.addAttribute("result", result);
      return "member/mymodify2";
   }
   
   
   
   //내 정보 수정
   @RequestMapping("/myModifyProc.mem")
   public String myModifyProc(MemberDTO dto, Model model) {
	   MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
	   System.out.println("여기확인해라" + dto.getWriterInfo());
	   dto.getId().replace("<", "&lt;");
		dto.getName().replace("<", "&lt;");
		dto.getBirth().replace("<", "&lt;");
		dto.getPw().replace("<", "&lt;");
		dto.getNickname().replace("<", "&lt;");
		dto.getPhone().replace("<", "&lt;");
		dto.getWriterInfo().replace("<", "&lt;");
	   int result  = service.myModifyProc(dto, loginInfo.getId());
	  boardService.changeNickname(loginInfo.getNickname(), dto.getNickname());
      model.addAttribute("result", result);
      return "/member/modifyCheck";
   }
   
   //내정보수정완료
   @RequestMapping("/myModifyOK.mem")
   public String myModifyOK() {
	   session.invalidate();
	   return "index";
   }

}