package com.test.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.member.dao.MemberMapper;
import com.test.member.model.MemberVO;
import com.test.member.model.PagingVO;
import com.test.member.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired private MemberMapper service;
	
	@Override
	public List<MemberVO> memberlist() {
		System.out.println("@@@@@@"+ service.memberlist());
		return service.memberlist();
	}
	@Override
	public void memberinert(MemberVO member) {
		//System.out.println("@@@@@@"+ service.memberinert());
		service.memberinsert(member);
	}

	//수정
	@Override
	public void memberUpdate(MemberVO member) {
		System.out.println("@@@@@@"+member);
		service.memberUpdate(member);
	}
	
	// 상세정보
	@Override
	public MemberVO memberDetail(MemberVO member) {
	// TODO Auto-generated method stub
	return service.memberDetail(member);
	}
	
	
	@Override
	public int testcount() {
		return service.testcount();
	}

	@Override
	public List<MemberVO> memberlist(PagingVO vo) {
		System.out.println("MemberServiceImpl::::::" + vo);
		return service.memberlist(vo);
	}
	
	
	
	
	
	
//	// 일시정지 활동
//	@Override
//	public void membertype(MemberVO member) {
//		service.membertype(member);
//	}
	


	  
	}