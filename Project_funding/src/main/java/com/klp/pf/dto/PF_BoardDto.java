package com.klp.pf.dto;

public class PF_BoardDto {

   
       private int board_no;
       private String board_title;
       private String board_content;
       private int project_money;
       private int project_term;
       private String project_start_day;
       private String recruit_date;
       private String recruit_personnel;
       private String project_category;
       private String project_type;
       private String board_file;
       private String project_state;
       private String board_regdate;
       private int user_no;
       private long recruit;
      
       public PF_BoardDto() {
          
       }
       
       public PF_BoardDto(int board_no, String board_title, String board_content, int project_money, int project_term,
             String project_start_day, String recruit_date, String recruit_personnel, String project_category,
            String project_type, String board_file, String project_state, String board_regdate, int user_no) {
         super();
         this.board_no = board_no;
         this.board_title = board_title;
         this.board_content = board_content;
         this.project_money = project_money;
         this.project_term = project_term;
         this.project_start_day = project_start_day;
         this.recruit_date = recruit_date;
         this.recruit_personnel = recruit_personnel;
         this.project_category = project_category;
         this.project_type = project_type;
         this.board_file = board_file;
         this.project_state = project_state;
         this.board_regdate = board_regdate;
         this.user_no = user_no;
      }

      public int getBoard_no() {
         return board_no;
      }

      public void setBoard_no(int board_no) {
         this.board_no = board_no;
      }

      public String getBoard_title() {
         return board_title;
      }

      public long getRecruit() {
      return recruit;
   }

   public void setRecruit(long recruit) {
      this.recruit = recruit;
   }

   public void setBoard_title(String board_title) {
         this.board_title = board_title;
      }
   
      public String getBoard_content() {
         return board_content;
      }

      public void setBoard_content(String board_content) {
         this.board_content = board_content;
      }

      public int getProject_money() {
         return project_money;
      }

      public void setProject_money(int project_money) {
         this.project_money = project_money;
      }

      public int getProject_term() {
         return project_term;
      }

      public void setProject_term(int project_term) {
         this.project_term = project_term;
      }  

      public String getProject_start_day() {
      return project_start_day;
   }

   public void setProject_start_day(String project_start_day) {
      this.project_start_day = project_start_day;
   }

   public String getRecruit_date() {
      return recruit_date;
   }

   public void setRecruit_date(String recruit_date) {
      this.recruit_date = recruit_date;
   }

   public String getRecruit_personnel() {
      return recruit_personnel;
   }

   public void setRecruit_personnel(String recruit_personnel) {
      this.recruit_personnel = recruit_personnel;
   }

   public String getProject_category() {
         return project_category;
      }

      public void setProject_category(String project_category) {
         this.project_category = project_category;
      }

      public String getProject_type() {
         return project_type;
      }

      public void setProject_type(String project_type) {
         this.project_type = project_type;
      }

      public String getBoard_file() {
         return board_file;
      }

      public void setBoard_file(String board_file) {
         this.board_file = board_file;
      }

      public String getProject_state() {
         return project_state;
      }

      public void setProject_state(String project_state) {
         this.project_state = project_state;
      }

      public String getBoard_regdate() {
         return board_regdate;
      }

      public void setBoard_regdate(String board_regdate) {
         this.board_regdate = board_regdate;
      }

      public int getUser_no() {
         return user_no;
      }

      public void setUser_no(int user_no) {
         this.user_no = user_no;
      }
      

   @Override
   public String toString() {
      return "PF_BoardDto [board_no=" + board_no + ", board_title=" + board_title + ", board_content=" + board_content
            + ", project_money=" + project_money + ", project_term=" + project_term + ", project_start_day="
            + project_start_day + ", recruit_date=" + recruit_date + ", recruit_personnel=" + recruit_personnel
            + ", project_category=" + project_category + ", project_type=" + project_type + ", board_file="
            + board_file + ", project_state=" + project_state + ", board_regdate=" + board_regdate + ", user_no="
            + user_no + "]";
   }
       
}