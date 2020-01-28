package glim.spring.services;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import glim.spring.dao.BoardDAO;
import glim.spring.dao.CommentsDAO;
import glim.spring.dto.BoardDTO;
import glim.spring.dto.CommentsDTO;
import glim.spring.dto.FileListDTO;
import glim.spring.dto.FileTemp;
import glim.spring.dto.GudokDTO;



@Service
public class BoardService {

	@Autowired
	private BoardDTO boarddto;
	
	@Autowired
	private BoardDAO boarddao;
	
	@Autowired
	private CommentsDAO commentsdao;
	
	@Autowired
	private CommentsDTO commentsdto;
	
	@Autowired
	private GudokDTO gudokdto;
	
	//카테고리별 게시판 목록 띄우기
	public List<BoardDTO> selectCategory(String category){
		List<BoardDTO> list = null;
		try {
			list = boarddao.selectCategory(category);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	//게시판 목록 띄우기
	public List<BoardDTO> selectAll() {
		List<BoardDTO> list = null;
		try {
			list = boarddao.selectAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	//게시글 입력
	public void insert(BoardDTO boarddto, int sequence) {
		try {
			boarddao.insert(boarddto, sequence);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//게시글삭제
	public void delete(String seq) {
		try {
			boarddao.delete(seq);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//회원탈퇴시 게시글삭제
	public void memberOutDelete(String nickname) {
		try {
			boarddao.memberOutDelete(nickname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//게시글 수정
	public void update(BoardDTO boarddto) {
		try {
			boarddao.update(boarddto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//닉네임으로 쓴 글 불러오기
	public List<BoardDTO> selectNickname(String nickname) {
		List<BoardDTO> nicknameList = null;
		try {
			nicknameList = boarddao.selectNickname(nickname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nicknameList;
	}
	
	//회원정보수정시 썼던 글 닉네임 변경
	public void changeNickname(String nickname, String newNickname) {
		boarddao.changeNickname(nickname, newNickname);
	}
	
	//파일 업로드
//	public void fileUpload(int sequence, List<FileTemp> file) {
//		try {
//			boarddao.fileUpload(sequence,file);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	
	//파일업로드
	
//	public void fileInsert(FileListDTO filedto, int sequence, String path){
//		
//		File filepath = new File(path);
//		if(!filepath.exists()) {
//			filepath.mkdir();
//			}
//		
//		String fileName = null;
//		String OriFileName = null;
//
//		for(MultipartFile tmp : filedto.getFile()) {
//			fileName = tmp.getOriginalFilename();
//			OriFileName = System.currentTimeMillis() + "_" + fileName;
//				
//					try {
//						tmp.transferTo(new File(path + "/" + OriFileName));
//					} catch (IllegalStateException e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					} catch (IOException e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					}
//				
//				
//					try {
//						int fileresult = boarddao.fileInsert(sequence, filedto, fileName, OriFileName);
//					} catch (Exception e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//				
//			
//			
//					};
//		
//			// 반복문을 돌리면서 아무 역할도 안함.
//			// 여기서 tmp.transferTo는 어디갔음?
//			// 또한 아래의 insert 구문 두개가 반복문 안으로 들어와야 함.
//	}
	
	

	//공통시퀀스 뽑아오기
	public int getSequence() throws Exception{
		int sequence = 0;
		sequence = boarddao.getSequence();
		System.out.println("공통시퀀스 뽑아옴?" + sequence);
		return sequence;
	}
	
	//상세보기 댓글보기
	public BoardDTO selectSeq(int seq){
		BoardDTO list = null;
		try {
			list = boarddao.selectSeq(seq);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	//댓글작성
	public void insert(CommentsDTO commentsdto) throws Exception{
		commentsdao.insert(commentsdto);}
	
	public List<CommentsDTO> selectCommentsSeq(int seq){
		List<CommentsDTO> commentslist = null;
		try {
			commentslist = commentsdao.selectSeq(seq);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commentslist;
	}

	
	//댓글 삭제
	public void deleteComment(int seq, int commentsSeq)throws Exception{
		commentsdao.delete(seq, commentsSeq);
	}
	
	
	//댓글 수정
	public void updateComments(CommentsDTO commentsdto)throws Exception{
		commentsdao.update(commentsdto);
	}
	
	//작가페이지로 이동
	public List<BoardDTO> writerPage(String nickname){
		List<BoardDTO> writeList = null;
		try {
			writeList = boarddao.selectNickname(nickname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return writeList;
		
	}
	
	
	//조회수
	public void viewCount(int seq) {
		try {
			boarddao.viewCount(seq);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//구독여부확인
	public int isgudok(String nickname, String id) {
		int result = 0;
		try {
		result = boarddao.isgudok(nickname, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	//구독하기
	public void gudokinsert(String nickname, String id) {
		try {
			boarddao.gudokinsert(nickname, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//구독취소하기
	public void cancleGudok(String nickname, String id) {
		try {
			boarddao.cancleGudok(nickname, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//구독자목록
	public List<GudokDTO> gudokList(String id){
		List<GudokDTO> list = boarddao.gudokList(id);
		return list;
	}
	
}
