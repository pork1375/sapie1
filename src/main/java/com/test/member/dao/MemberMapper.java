package com.test.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.ResolverUtil.Test;

import com.test.member.model.MemberVO;
import com.test.member.model.PageMaker;
import com.test.member.model.PagingVO;

@Mapper
public interface MemberMapper {
	// 회원목록 리스트
	List<MemberVO> memberlist();

	// 등록
	void memberinsert(MemberVO member);
	// 수정과정
	void memberUpdate(MemberVO member);
	// 수정이동
	MemberVO Update(MemberVO member);
	
	// 상세페이지
	MemberVO memberDetail(MemberVO member);
	// 일시정지
	void membertype(MemberVO member);
	

	
	//게시글의 갯수
	public int testcount();
	// 페이징 처리 게시글 조회
	public List<MemberVO> memberlist(PagingVO vo);

	
	
//	//pagenum 페이지 번호를 가져오고 몇개를 가져오는지..??
//	public List<MemberVO> memberlist(@Param("pagenum") int pagenum,@Param("contentnum") int contentnum);

}
