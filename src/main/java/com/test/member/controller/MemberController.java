package com.test.member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.mapper.Mapper;
import org.apache.ibatis.io.ResolverUtil.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.member.dao.MemberMapper;
import com.test.member.model.MemberVO;
import com.test.member.model.PageMaker;
import com.test.member.model.PagingVO;
import com.test.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired MemberService service;
	 

	@RequestMapping("/")
	public String main() {
		return "test";
	}
	//목록
	@RequestMapping("/memberlist")
	public String memberList(Model model, PagingVO vo
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {

		int total = service.testcount();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		//System.out.println("total!!!!"+total);
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		//System.out.println("@@@@@@@@@@@@"+vo);
		//System.out.println("@@@@@@@@@@@@"+service.memberlist(vo));
		model.addAttribute("paging", vo);
		model.addAttribute("list", service.memberlist(vo));
		

//		PageMaker pagemaker = new PageMaker();
//		System.out.println("pagemaker : " + pagemaker);
//		String pagenum = request.getParameter("pagenum");
//		String contentnum = request.getParameter("contentnum");
//		System.out.println("pagenum : " + pagenum);
//		System.out.println("contentnum : " + contentnum);
//		
//		int cpagenum = Integer.parseInt(pagenum);
//		int ccontentnum = Integer.parseInt(contentnum);
//		System.out.println("pagenum : " + pagenum);
//		System.out.println("contentnum : " + contentnum);
//		
//		
//		// 게시글 페이징
//		pagemaker.setTotalcount(mapper.testcount()); // 전체 게시글 갯수
//		pagemaker.setPagenum(cpagenum-1);
//		pagemaker.setContentnum(ccontentnum);
//		pagemaker.setCurrentblock(cpagenum);
//		pagemaker.setLastblock(pagemaker.getTotalcount());
//		
//		// 화살표
//		pagemaker.prevnext(cpagenum);
//		pagemaker.setStartPage(pagemaker.getCurrentblock());
//		pagemaker.setEndPage(pagemaker.getLastblock(), pagemaker.getCurrentblock());
//		
//		List<Test> testlist = new ArrayList<>();
//		testlist = mapper.testlist(pagemaker.getPagenum()*10, pagemaker.getContentnum());
//		
//		request.setAttribute("plist", testlist);
//		request.setAttribute("page", pagemaker);
		
// System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@"+service.memberlist());
//		model.addAttribute("list", service.memberlist());
		return "memberlist";
	}
	
	@RequestMapping(value="/membersave")
	public String membersave() {
		return "membersave";
	}
	
	@RequestMapping(value="/memberinsert")
	public String memberinsert(MemberVO member) {
		//System.out.println("@@@@@@@@@@@:"+member.getName());
		service.memberinert(member);
		return "redirect:memberlist";
	}

	
	// 회원정보 수정 페이지(뷰)
	@RequestMapping(value="/Update")
	public String Update(MemberVO member, Model model) {
	System.out.println("no:"+member);
	model.addAttribute("data",service.memberDetail(member));//상세정보
	return "memberUpdate";
	}
	// 회원정보 데이터 수정
	@RequestMapping(value="/memberUpdate",method=RequestMethod.POST)
	public String memberUpdate(MemberVO member) {
		System.out.println("member ====> "+ member);
		service.memberUpdate(member);
		return "redirect:memberlist";
	}
	
	
	
	
	
	
//	// membertype 일시정지 활동재개
//	@RequestMapping(value="/Update")
//	public String membertype(MemberVO member) {
//		return "memberlist";
//	}
	
//	@RequestMapping(value="/memberUpdate")
//	public String memberDelete() {
//		return "memberUpdate";
//	}
	
//	업데이트 다른방법    1
//	@RequestMapping(value="/memberUpdate",method = {RequestMethod.POST, RequestMethod.GET})
//	public String memberUpdate(@RequestParam(value="no") int no,@ModelAttribute("member") MemberVO member) {
//		memberUpdate(no, member);
//		service.memberUpdate(member);
//		return "redirect:memberlist";
//	}
	
	
	// 업데이트 다른방법    2
//		@RequestMapping(value="/memberUpdate",method=RequestMethod.POST)
//		public String memberUpdate(MemberVO member) {
//			System.out.println("mvo ====> "+ member.getUl());
//			service.memberUpdate(member);
//			return "redirect:memberlist";
//		}
	
	
	
	
	}
