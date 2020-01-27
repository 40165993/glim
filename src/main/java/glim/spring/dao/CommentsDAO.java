package glim.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import glim.spring.dto.BoardDTO;
import glim.spring.dto.CommentsDTO;

@Repository
public class CommentsDAO {

	
	@Autowired
	private SqlSessionTemplate jdbc;
	
	
	//댓글작성
	public int insert(CommentsDTO commentsdto)throws Exception{
		Map<String, String> param = new HashMap<>();
		param.put("seq", commentsdto.getBoardSeq()+"");
		param.put("writer", commentsdto.getWriter());
		param.put("text", commentsdto.getText());
		System.out.println(param);
		return jdbc.insert("comments.insert", param);
	}
	
	//댓글출력
	public List<CommentsDTO> selectSeq(int seq) throws Exception{
		return jdbc.selectList("comments.selectSeq", seq);
	}
	
	//댓글삭제
	public int delete(int seq, int commentsSeq)throws Exception{
		Map<String, String> param = new HashMap<>();
		System.out.println("여기는?? " + seq);
		System.out.println("어떄??" + commentsSeq);
		param.put("seq", seq+"");
		param.put("commentsSeq", commentsSeq+"");
		return jdbc.delete("comments.delete", param);
	}
	
	//댓글 수정
	public int update(CommentsDTO commentsdto)throws Exception{
	
		Map<String, Object> param = new HashMap<>();
		param.put("text", commentsdto.getText());
		param.put("boardSeq", commentsdto.getBoardSeq());
		param.put("commentsSeq", commentsdto.getCommentsSeq());
		return jdbc.update("comments.update", param);
	}
	
	
}
