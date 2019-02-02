package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_BoardDto;
import com.klp.pf.model.dao.PF_BoardDao;

@Service
public class PF_BoardBizImpl implements PF_BoardBiz {

	@Autowired
	private PF_BoardDao pf_boardDao;
	
	public List<PF_BoardDto> selectBoardList(int page) {
		System.out.println("biz"+page);
		return pf_boardDao.selectBoardList(page);
	}

	@Override
	public int totalcount() {
		return pf_boardDao.totalCount();
	}

	@Override
	public int insert(PF_BoardDto dto) {
		System.out.println(dto);
		return pf_boardDao.insert(dto);
	}

	@Override
	public int update(PF_BoardDto dto) {
		
		return pf_boardDao.update(dto);
	}

	@Override
	public int delete(int board_no) {
		
		return pf_boardDao.delete(board_no);
	}

	@Override
	public PF_BoardDto selectOne(int board_no) {
		
		return pf_boardDao.selectOne(board_no);
	}
	

	   //키워드 검색
	   @Override
	   public List<PF_BoardDto> search(int page, String board_title) {
	      // TODO Auto-generated method stub
	      return pf_boardDao.search(page, board_title);
	   }

	   @Override
	   public int totalCount_title(String board_title) {
	      return pf_boardDao.totalCount_title(board_title);
	   }

	   
	   //카테고리 검색
	   @Override
	   public List<PF_BoardDto> detail_search1(int page,String category1,String category2) {
	      // TODO Auto-generated method stub
	      return pf_boardDao.detail_search1(page,category1,category2);
	   }

	   @Override
	   public int totalCount_detail(String category1, String category2) {
	      // TODO Auto-generated method stub
	      return pf_boardDao.totalCount_detail(category1,category2);
	   }
	   //높은 금액순
	   @Override
	   public List<PF_BoardDto> selectMoneyList(int page) {
	      // TODO Auto-generated method stub
	      return pf_boardDao.selectMoneyList(page);
	   }
	   //마감임박순
	   @Override
	   public List<PF_BoardDto> selectDateList(int page) {
	      // TODO Auto-generated method stub
	      return pf_boardDao.selectDateList(page);
	   }

	@Override
	public List<PF_BoardDto> ingBoardList(String project_state) {
		
		return pf_boardDao.ingBoardList(project_state);
	}

	@Override
	public int updateState(int board_no) {
		
		return pf_boardDao.updateState(board_no);
	}

}
