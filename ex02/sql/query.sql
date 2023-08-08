SELECT * FROM tab;

CREATE SEQUENCE seq_board;

CREATE TABLE tbl_board(
	bno number(10,0),
	title varchar2(200) NOT NULL,
	content varchar2(2000) NOT NULL,
	writer varchar2(50) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate
);

ALTER TABLE tbl_board ADD CONSTRAINT pk_board
PRIMARY key(bno);

SELECT * FROM tbl_board;

INSERT INTO tbl_board (bno, title, content, writer)
VALUES (seq_board.nextval, '테스트 제목','테스트 내용','user00');

ALTER SEQUENCE seq_board nocache;

DELETE FROM TBL_BOARD WHERE bno=21;

select seq_board.nextval from dual;

select * from tbl_board where bno = 5;

ALTER SEQUENCE seq_board INCREMENT BY -32;

DROP SEQUENCE seq_board;

SELECT * FROM tbl_board WHERE bno > 0 ORDER BY bno desc
