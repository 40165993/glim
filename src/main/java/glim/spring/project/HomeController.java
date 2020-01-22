package glim.spring.project;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import glim.spring.dto.BoardDTO;
import glim.spring.services.BoardService;


@Controller
@RequestMapping
public class HomeController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/")
	public String home(Model model) {
		List<BoardDTO> list = boardService.selectAll();
		model.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping("/test")
	public String tedt() {
		return "New";
	}
	
	@RequestMapping("/start.mem")
	public String strat() {
		return "/member/login";
	}
	
	@RequestMapping("/index.mem")
	public String index() {
		return "index";
	}
	

	
}
