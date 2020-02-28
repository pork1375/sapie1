package com.test.member.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("member")
//전체회원목록 
public class MemberVO {
	private int no;
	private String name;
	private String ename;
	private String id;
	private String email;
	private String birth;
	private String job;
	private String address;
	private String photo;
	private String motive;
	private String date;
	private String division;
	private String servicestage;	// 번역봉사(새싹,열매,공백) 셀렉트박스
	private String translation;
	private int ul;
	private String staff;
	private String yin;
	private String joined;
	private String phon;
	private String agree;
	private char type;
	
	//
	private String keyword; //검색 키워드

}