package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;

public interface BoardMapper {
	
//	@Select("select * from tbl_board where bno > 0 ")
	public List<BoardVO> getList();
	
	public abstract void insert(BoardVO board);
	
	public abstract void insertSelectKey(BoardVO board);
	
	public abstract BoardVO read(Long bno);
	
	public int delete(Long bno);
	
	public abstract int update(BoardVO board);
	
	@Delete("delete from tbl_board where bno = 30")
	public int deleteTest();
	
	
	@Delete("delete from tbl_board where bno = #{bno}")
	public int deleteTest2(Long bno);
}
