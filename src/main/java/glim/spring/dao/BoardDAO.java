package glim.spring.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import glim.spring.dto.BoardDTO;
import glim.spring.dto.FileListDTO;
import glim.spring.dto.FileTemp;
import glim.spring.dto.GudokDTO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate jdbc;
	
	public int insert(BoardDTO boarddto, int sequence)throws Exception{
		Map<String, String> param = new HashMap<>();
		param.put("sequence", sequence+"");
		param.put("nickname", boarddto.getNickname());
		param.put("category",boarddto.getCategory());
		param.put("title", boarddto.getTitle());
		param.put("text", boarddto.getText());
		System.out.println(param);
		return jdbc.insert("board.insert", param);
	}
	
	
//	//파일업로드
//	public int fileUpload(int sequence, List<FileTemp> file)throws Exception{
//		
//		Map<String,Object> param = new HashMap<String, Object>();
//		for(int i = 0 ; i<file.size(); i++) {
//		param.put("sequence", sequence+"");
//		param.put("filePath", file.get(i).getFilePath());
//		param.put("sysName", file.get(i).getSysName());
//		param.put("oriName", file.get(i).getOriName());
//		System.out.println("파일업로드 확인  : " + param);
//		}
//		List<FileTemp> fileList = new ArrayList<FileTemp>();
//		fileList.add(param);
//		return jdbc.insert("board.fileUpload", fileList);
//	}
	
	
	
	
	
	
	//파일업로드
//	public int fileInsert(int sequence, FileListDTO filedto, String fileName, String OriFileName)throws Exception{
//		Map<String, String> param = new HashMap<>();
//		param.put("sequence", sequence+"");
//		param.put("photoSeq" , filedto.getPhotoSeq()+"");
//		param.put("fileName", filedto.getFileName());
//		param.put("OriFileName", filedto.getOriFileName());
//		System.out.println("filelist" + param);
//		return jdbc.insert("board.fileInsert", param);
//	}
	
	public List<BoardDTO> selectAll() throws Exception{
		return jdbc.selectList("board.selectAll");
	}
	
	public BoardDTO selectSeq(int seq) throws Exception{
		return jdbc.selectOne("board.selectSeq", seq);
	}
	
	//카테고리별 게시판 목록 띄우기
	public List<BoardDTO> selectCategory(String category) throws Exception{
		return jdbc.selectList("board.selectCategory", category);
	}
	
	public int getSequence()throws Exception{
		return jdbc.selectOne("File.getSequence");
}
	public List<BoardDTO> selectNickname(String nickname)throws Exception{
		return jdbc.selectList("board.selectNickname", nickname);
	}
	
	//게시글삭제
	public int delete(String seq)throws Exception{
		return jdbc.delete("board.delete", seq);
	}
	
	//게시글수정
	public int update(BoardDTO boarddto)throws Exception{
		Map<String, String> param = new HashMap<>();
		param.put("sequence", boarddto.getSeq()+"");
		param.put("nickname", boarddto.getNickname());
		param.put("category",boarddto.getCategory());
		param.put("title", boarddto.getTitle());
		param.put("text", boarddto.getText());
		System.out.println(param);
		return jdbc.insert("board.update", param);
	}
	
	//조회수
	public int viewCount(int seq)throws Exception{
		return jdbc.update("board.viewCount", seq);
	}
	
	//구독여부확인
	public int isgudok(String nickname,String id)throws Exception{
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("nickname", nickname);
		return jdbc.selectOne("board.isgudok", param);
	}

	
	//구독하기
	public int gudokinsert(String nickname, String id)throws Exception{
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("nickname", nickname);
		return jdbc.insert("board.gudokinsert", param);
	}
	
	//구독취소하기
	public int cancleGudok(String nickname, String id)throws Exception{
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("nickname", nickname);
		return jdbc.delete("board.cancleGudok", param);
	}
	
	//구독자 목록 출력
	public List<GudokDTO> gudokList(String id){
		return jdbc.selectList("board.gudokList", id);
	}

}
