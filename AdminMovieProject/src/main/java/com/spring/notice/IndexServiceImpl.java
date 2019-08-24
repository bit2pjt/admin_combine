package com.spring.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("IndexService")
@AllArgsConstructor
public class IndexServiceImpl implements IndexService {
	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private IndexDAO indexDAOglobal;


	@Override
	public int dailyMemberCount(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailyFBoardCount(int bf_bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailySBoardCount(int bs_bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailyMBoardCount(int mml_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailyABoardCount(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int allMemberCount(int id) {
		// TODO Auto-generated method stub
		return 0;
	}



}