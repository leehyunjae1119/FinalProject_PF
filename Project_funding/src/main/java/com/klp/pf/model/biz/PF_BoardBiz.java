package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_BoardDto;

public interface PF_BoardBiz {

   // 프로젝트 찾기
   public List<PF_BoardDto> selectBoardList(int page, String project_state);

   // 승인 된 프로젝트 만 세기
   public int totalcount(String project_state);

   public int insert(PF_BoardDto dto);

   public PF_BoardDto selectOne(int board_no);

   public int update(PF_BoardDto dto);

   public int delete(int board_no);

   // 지원자 모집 중인 프로젝트
   public List<PF_BoardDto> ingBoardList(String project_state, int user_no);

   // 투자중인 프로젝트 리스트
   public List<PF_BoardDto> investList(String project_state, int user_no);

   public int updateState(int board_no);

   // keyword 검색
   public List<PF_BoardDto> search(int page, String board_title, String project_state);

   public int totalCount_title(String board_title, String project_state);

   // 금액순 리스트
   public List<PF_BoardDto> selectMoneyList(int page);

   // 마감순
   public List<PF_BoardDto> selectDateList(int page);

   // 카테고리 검색
   public List<PF_BoardDto> detail_search1(int page, String category1, String category2, String project_state);

   public int totalCount_detail(String category1, String category2, String project_state);

   
   //진행중인 프로젝트 리스트 
   public List<PF_BoardDto> ing_list(int page, String project_state,int user_no);

   public int totalCount_ing_user(String project_state,int user_no); 

   // 완료된 프로젝트 리스트
   public List<PF_BoardDto> end_list(int page, String project_state, int user_no);

   public int totalCount_end(String project_state, int user_no);
   
   public int project_finish(int board_no);

   // 관심상태 변경
   public int LikeUpdate(int board_no, int likeuser_no);

   public List<PF_BoardDto> likeList(int user_no);

   // 동민 추가 부분
   // 프로젝트 검수 리스트
   public List<PF_BoardDto> selectBoardList_inspection(String project_state);

   // 클라이언트 검수 중 페이지 리스트
   public List<PF_BoardDto> client_inspectionList(String project_state, int user_no);

   // 관리자 검수 신청 온 프로젝트 승인
   public int admin_changeProject(int board_no);

   // 관리자 검수 신청 온 프로젝트 폐기
   public int admin_deleteproject(int board_no, String project_state);
}