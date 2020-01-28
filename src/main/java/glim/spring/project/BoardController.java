package glim.spring.project;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import glim.spring.dao.BoardDAO;
import glim.spring.dto.BoardDTO;
import glim.spring.dto.CommentsDTO;
import glim.spring.dto.FileListDTO;
import glim.spring.dto.FileTemp;
import glim.spring.dto.MemberDTO;
import glim.spring.services.BoardService;
import glim.spring.services.MemberService;



@Controller
@RequestMapping
public class BoardController {

	@Autowired
	private BoardService boardService;

	@Autowired
	private BoardDAO boarddao;

	@Autowired
	private HttpSession session;

	@Autowired
	private CommentsDTO commentsdto;

	@Autowired
	private MemberService service;


	private List<String> fileList = new ArrayList<>();
	private List<FileTemp> temp = new ArrayList<>();

	//카테고리별 게시판 목록
	@RequestMapping("/board/category.board")
	public String board(Model model, String category) {
		System.out.println(category);
		List<BoardDTO> list = boardService.selectCategory(category);
		model.addAttribute("list", list);
		return "/board/list2";
	}
	
	//카테고리별 카드 
	@RequestMapping("/board/categoryCard.board")
	public String categoryCard(Model model, String category) {
		System.out.println(category);
		List<BoardDTO> list = boardService.selectCategory(category);
		model.addAttribute("list", list);
		return "index";
	}


	//게시판 목록
	@RequestMapping("/board.board")
	public String board(Model model) {
		try {
			List<BoardDTO> list = boardService.selectAll();
			model.addAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/board/list2";
	}



	@RequestMapping("/board/write.board")
	public String write(Model model, MemberDTO dto) {

		return "/board/write2";
	}


	//게시글 작성
	@RequestMapping("/board/writeProc.board")
	public String writeProc(BoardDTO boarddto, FileListDTO filedto) {

			int sequence;
			try {
				sequence = boardService.getSequence();
				MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
				boarddto.setNickname(loginInfo.getNickname());
				boardService.insert(boarddto, sequence);//글내용인서트
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
//			String path = session.getServletContext().getRealPath("file");
//			File filepath = new File(path);
			
			//			session.setAttribute("filelist", fileList);
//			List<FileTemp> file = (List<FileTemp>) session.getAttribute("temp");
//			boardService.fileUpload(sequence, file);//파일인서트
//			
//			if(!filepath.exists()) {
//				filepath.mkdir();
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

		return "redirect:/board/category.board?category="+boarddto.getCategory();
		}
	
	
	//summernote 업로드
	@RequestMapping(value="/ajaxImage.board", produces = "text/html;+charset=utf8")
	@ResponseBody
	public String ajaxImage(MultipartFile image) {
		session.setAttribute("filelist", fileList);
		String oriName = image.getOriginalFilename();
		((List<String>)session.getAttribute("filelist")).add(oriName);
		String sysName = System.currentTimeMillis() + "_" + oriName;
		String path = session.getServletContext().getRealPath("temp");
		File filepath = new File(path);
		File f = new File(path+ "/" + sysName);
		if(!filepath.exists()) {
			filepath.mkdir();
		}

		String filePath = "/temp/"+sysName;


		try {
			image.transferTo(new File(path+ "/" + sysName));
			FileTemp filetemp = new FileTemp();
			filetemp.setOriName(oriName);
			filetemp.setSysName(sysName);
			filetemp.setFilePath(path);
			filetemp.setF(f);
			System.out.println("여기!!!" + oriName + sysName + path);
			temp.add(filetemp);
			System.out.println("템프!!" + temp);
			System.out.println("파일템프!!" + filetemp);
			session.setAttribute("temp", temp);
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
			return "fail";
		} catch (IOException e) {
			e.printStackTrace();
			return " fail";
		} 
		return "/temp/" + sysName;
	}



	//게시글 상세보기 & 댓글보기 
	@RequestMapping("/board/detail.board")
	public String detail(int seq, Model model) {
		MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
		boardService.viewCount(seq);
		BoardDTO dto = boardService.selectSeq(seq);
		List<CommentsDTO> list = boardService.selectCommentsSeq(seq);//댓글출력
		//		System.out.println(dto.getSeq());
		model.addAttribute("dto", dto);
		model.addAttribute("list",list);//댓글뿌려주기
		model.addAttribute("loginInfo", loginInfo);
		return "/board/detail2";

	}
	
	//게시글 삭제
	@RequestMapping("/board/delete.board")
	public String delete(String seq) {
		boardService.delete(seq);
		return "index";
	}
	
	//회원탈퇴시 게시글 삭제
	@RequestMapping("/board/memberOutDelete.board")
	public void memberOutDelete(String nickname) {
		boardService.memberOutDelete(nickname);
	}
	
	//게시글 수정
	@RequestMapping("/board/update.board")
	public String update(BoardDTO boarddto, Model model) {
		BoardDTO dto = boardService.selectSeq(boarddto.getSeq());
		model.addAttribute("dto", dto);
		return "/board/update";
		
	}
	
	//게시글수정2
	@RequestMapping("/board/updateProc.board")
	public String updateProc(BoardDTO boarddto) {
		
			try {
				MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
				boarddto.setNickname(loginInfo.getNickname());
				System.out.println("여기확인해라!!"+boarddto.getCategory());
				boardService.update(boarddto);//글내용인서트
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}return "redirect:/board/category.board?category="+boarddto.getCategory();
			
	}



	//댓글작성
	@RequestMapping("/board/writeComments.board")
	public String writeComments(int seq, String text) {
		try {
			System.out.println("여기까진옴");
			MemberDTO loginInfo = (MemberDTO) session.getAttribute("loginInfo");
			commentsdto.setWriter(loginInfo.getNickname());
			commentsdto.setBoardSeq(seq);
			commentsdto.setText(text);
			boardService.insert(commentsdto);
			System.out.println(commentsdto.getBoardSeq()  + commentsdto.getText() + commentsdto.getWriter());
		} catch (Exception e) {
			// TODO Auto-generated dk			catch block
			e.printStackTrace();
		}
		return "redirect:/board/detail.board?seq=" + seq;
	}



	//댓글 삭제
	@RequestMapping(value="/board/delComments", method=RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<CommentsDTO> deleteComments(@RequestBody Map<String, Object> params) {
		System.out.println("백 인입 성공 ");
		List<CommentsDTO> result = null;
		try {			
			int seq = Integer.parseInt((String)params.get("seq"));
			int commentsSeq = Integer.parseInt((String)params.get("commentsSeq"));
			System.out.println("seq는 "+seq);
			System.out.println("commentsSeq는 "+commentsSeq);			
			boardService.deleteComment(seq, commentsSeq);
			result = boardService.selectCommentsSeq(seq);//댓글출력			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return result;
	}
	/*
	 * 	//댓글 삭제
	@RequestMapping("/board/deleteComments.board")
	public String deleteComments(int seq, int commentsSeq, Model model) {
		try {
			boardService.deleteComment(seq, commentsSeq);
			List<CommentsDTO> list = boardService.selectCommentsSeq(seq);//댓글출력
			model.addAttribute("list",list);//댓글뿌려주기
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/board/detail.board?seq="+seq;

	}*/

	//댓글수정
	@RequestMapping("/board/updateComments.board")
	public String updateComments(CommentsDTO commentsdto, String commentsSeq,String text, String boardSeq) {
		try {
			commentsdto.setCommentSeq(Integer.parseInt(commentsSeq));
			commentsdto.setText(text);
			commentsdto.setBoardSeq(Integer.parseInt(boardSeq));
			boardService.updateComments(commentsdto);
			System.out.println(commentsdto.getCommentsSeq() + commentsdto.getText());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("댓글수정리다이렉트");
		return "redirect:/board/detail.board?seq="+boardSeq;

	}

	//작가게시판 게시글 목록 
	@RequestMapping("/board/writer.board")
	public String writer(String nickname, Model model) {
		MemberDTO id = (MemberDTO) session.getAttribute("loginInfo");
		System.out.println("닉네임요?? " + nickname);
		List<BoardDTO> writeList = boardService.writerPage(nickname);//글목록
		MemberDTO dto = service.writerInfo(nickname);//작가소개
		int isgudok = boardService.isgudok(nickname, id.getId());//구독여부확인
		model.addAttribute("writeList", writeList);
		model.addAttribute("dto", dto);
		model.addAttribute("gudok",isgudok);
		return "/writerPage2";
	}
	
	
	//구독하기
	@RequestMapping("/board/gudok.board")
	public String isgudok(String nickname) {
		MemberDTO id = (MemberDTO) session.getAttribute("loginInfo");
		System.out.println("실험1 : " + id.getId());
		System.out.println("실험 2 : " + nickname);
		boardService.gudokinsert(nickname, id.getId());
		return "redirect:/board/writer.board?nickname="+nickname;
	}
	
	//구독취소하기
	@RequestMapping("/board/cancleGudok.board")
	public String cancleGudok(String nickname) {
		MemberDTO id = (MemberDTO) session.getAttribute("loginInfo");
		boardService.cancleGudok(nickname, id.getId());
		return "redirect:/board/writer.board?nickname="+nickname;
	}

}
