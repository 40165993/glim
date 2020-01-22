package glim.spring.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import glim.spring.dto.MemberDTO;
import glim.spring.services.adminService;

@Controller
@RequestMapping("/admin")
public class adminController {

	@Autowired
	private MemberDTO memberdto;
	@Autowired
	private adminService adminservice;
	
	
	//회원목록출력
	@RequestMapping("/memberList.admin")
	public String memberList(Model model) {
		System.out.println("도착!");
		List<MemberDTO> dto = adminservice.memberList();
		model.addAttribute("dto", dto);
		return "/admin/memberList";
	}
	
	//차단회원목록출력
	@RequestMapping("/vanmember.admin")
	public String vanmember(Model model) {
	List<MemberDTO> dto = adminservice.vanList();
	model.addAttribute("dto", dto);
	return "redirect:/admin/vanList";
	}
	
	//회원차단
	@RequestMapping("/van.admin")
	public String van(String id) {
		adminservice.van(id);
		return "redirect:/admin/memberList";
	}
	
	//회원차단해제
	@RequestMapping("/cancleVan.admin")
	public String cancleVan(String id) {
		adminservice.cancleVan(id);
		return "redirect:/admin/vanList";	
	}
}
