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
   
   @RequestMapping("/signUpProc.mem")
   public String signUpPorc(MemberDTO dto, Model model) {
     System.out.println("signUpPorc 잘도착");
    int insert = service.signUpInsert(dto);
      if(insert>0) {
    	  session.setAttribute("loginInfo", dto);
          List<BoardDTO> list = boardService.selectAll();
    		model.addAttribute("list", list);
             return "index";
      }else {
          return "error";
      }
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
   
   
   //로그인
   @RequestMapping("login.mem")
      public String login(String id, String pw, Model model) { 
	  MemberDTO dto = service.myInfo(id);//내정보저장
	  service.loginOk(id, pw);
      session.setAttribute("loginInfo", dto);
      List<BoardDTO> list = boardService.selectAll();//
	model.addAttribute("list", list);
         return "index";
      }
    
   
   @RequestMapping("loginProc.mem")
   public String loginProc( Model model) {	
	   return "index";
	   
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
      System.out.println("여기ㅗ학인"+id.getId());
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
      String id = (String)session.getAttribute("loginInfo");
      String result = service.memberOut(id);
      session.invalidate();
      model.addAttribute("result",result);
      return "/member/memberOut";
   }
   
   
   //내정보수정
   @RequestMapping("/myModify.mem")
   public String myModify(MemberDTO DTO, Model model) {   
	  MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
      MemberDTO result = service.myInfo(loginInfo.getId());
      model.addAttribute("result", result);
      return "/member/myModify";
   }
   
   
   
   //내 정보 수정
   @RequestMapping("/myModifyProc.mem")
   public String myModifyProc(MemberDTO dto, Model model) {
	   MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
      int result  = service.myModifyProc(dto, loginInfo.getId());
      model.addAttribute("result", result);
      return "/member/modifyCheck";
   }

}