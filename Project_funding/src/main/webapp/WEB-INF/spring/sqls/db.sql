DROP SEQUENCE PF_USER_SEQ;
DROP SEQUENCE PF_BOARD_SEQ;
DROP SEQUENCE PF_PROFILE_SEQ;
DROP SEQUENCE PF_PORTFOLIO_SEQ;
DROP SEQUENCE PF_COIN_SEQ;

DROP TABLE PF_COIN;
DROP TABLE PF_PORTFOLIO;
DROP TABLE PF_PROFILE;
DROP TABLE PF_BOARD;
DROP TABLE PF_USER;

CREATE SEQUENCE PF_USER_SEQ;
CREATE SEQUENCE PF_BOARD_SEQ;
CREATE SEQUENCE PF_PROFILE_SEQ;
CREATE SEQUENCE PF_PORTFOLIO_SEQ;
CREATE SEQUENCE PF_COIN_SEQ;


CREATE TABLE PF_USER(
    USER_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(128) UNIQUE NOT NULL,
    USER_PW VARCHAR2(128) NOT NULL,
    USER_EMAIL VARCHAR2(256) UNIQUE NOT NULL,
    USER_TYPE VARCHAR2(128) NOT NULL,
    USER_ADDR VARCHAR2(1024),
    USER_EMAIL_HASH VARCHAR2(128) NOT NULL,
    USER_EMAIL_CHECK VARCHAR2(128) CHECK(USER_EMAIL_CHECK IN('TRUE','FALSE')),
    USER_IMG VARCHAR2(1024)
);

CREATE TABLE PF_BOARD(
    BOARD_NO NUMBER PRIMARY KEY,
    BOARD_TITLE VARCHAR2(1024) NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) NOT NULL,
    PROJECT_MONEY NUMBER NOT NULL,
    PROJECT_TERM NUMBER NOT NULL,
    PROJECT_START_DAY DATE NOT NULL,
    RECRUIT_DATE DATE NOT NULL,
    RECRUIT_PERSONNEL NUMBER NOT NULL,
    PROJECT_CATEGORY VARCHAR2(1024) NOT NULL,
    PROJECT_TYPE VARCHAR2(1024) NOT NULL,
    BOARD_FILE VARCHAR2(1024),
    PROJECT_STATE VARCHAR2(1024) NOT NULL,
    BOARD_REGDATE DATE NOT NULL,
    USER_NO NUMBER NOT NULL,
    
    CONSTRAINT FK_USER_NO FOREIGN KEY(USER_NO) REFERENCES PF_USER(USER_NO)
);
CREATE TABLE PF_PROFILE(
    PROFILE_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    PROFILE_JOB VARCHAR2(128),
    PROFILE_ACTIVITY VARCHAR2(128),
    PROFILE_INTRO VARCHAR2(4000),
    
    CONSTRAINT FK_USER_NO FOREIGN KEY(USER_NO) REFERENCES PF_USER(USER_NO)
);
CREATE TABLE PF_PORTFOLIO(
    PORTFOLIO_NO NUMBER PRIMARY KEY,
    PROFILE_NO NUMBER NOT NULL,
    PORTFOLIO_TITLE VARCHAR2(128) NOT NULL,
    PORTFOLIO_START_DAY DATE NOT NULL,
    PORTFOLIO_END_DAY DATE NOT NULL,
    PORTFOLIO_PARTICIPATION NUMBER NOT NULL,
    PORTFOLIO_CONTENT VARCHAR2(4000) NOT NULL,
    PORTFOLIO_FILE VARCHAR2(4000),
    
    CONSTRAINT FK_PROFILE_NO FOREIGN KEY(PROFILE_NO) REFERENCES PF_PROFILE(PROFILE_NO)
);
CREATE TABLE PF_COIN(
	COIN_NO NUMBER PRIMARY KEY,
	USER_NO NUMBER NOT NULL,
	COIN_REGDATE DATE NOT NULL,
	COIN_MONEY NUMBER NOT NULL,
	COIN_STATE VARCHAR2(1024) NOT NULL,
    
    CONSTRAINT FK_USER_NO FOREIGN KEY(USER_NO) REFERENCES PF_USER(USER_NO)
);

INSERT INTO PF_USER 
VALUES(PF_USER_SEQ.NEXTVAL, 'user1', 'user1', 'user1@naver.com', '투자자', NULL, 'FALSE', 'TRUE', NULL);

INSERT INTO PF_USER 
VALUES(PF_USER_SEQ.NEXTVAL, 'user2', 'user2', 'user2@naver.com', '파트너스', NULL, 'FALSE', 'TRUE', NULL);

INSERT INTO PF_USER 
VALUES(PF_USER_SEQ.NEXTVAL, 'user3', 'user3', 'user3@naver.com', '클라이언트', NULL, 'FALSE', 'TRUE', NULL);

INSERT INTO PF_PROFILE
VALUES(PF_PROFILE_SEQ.NEXTVAL, 2, '개발자', '활동가능', NULL);

SELECT * FROM PF_USER;
SELECT * FROM PF_PROFILE;
SELECT * FROM PF_PORTFOLIO;

commit;
rollback;