package com.test.member.service;

import java.util.List;

import com.test.member.model.MemberVO;
import com.test.member.model.PageMaker;
import com.test.member.model.PagingVO;



public interface MemberService {
	// 리스트
	List<MemberVO> memberlist();
	// 등록
	void memberinert(MemberVO member);
	// 수정보기
	void memberUpdate(MemberVO member);
	// 수정 상세정보
	MemberVO memberDetail(MemberVO member);
	
	// 게시물 갯수와 페이징
	public int testcount();
	List<MemberVO> memberlist(PagingVO vo);
	
	
	
	
	
	
	
	
//	// 일시정지 활동재개
//	void membertype(MemberVO member);

//	  void update(MemberVO member);
 
//	  void delete(int no);
	
}
