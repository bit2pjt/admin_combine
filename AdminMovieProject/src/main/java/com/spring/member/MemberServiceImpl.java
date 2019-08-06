package com.spring.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("memberService")
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private MemberDAO memberDAOglobal;

	@Override
	public List<MemberVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}