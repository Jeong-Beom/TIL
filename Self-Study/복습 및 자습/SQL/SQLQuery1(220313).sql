/* CREATE DATABASE TESTDB3 */
/* CREATE TABLE [dbo].[productTb](
	p_code CHAR(10) PRIMARY KEY,                -- 상품코드
	p_name NVARCHAR(16) NOT NULL,               -- 유니코드 지원
	p_date DATE NULL,                           -- 입고일
	p_area NVARCHAR(50) DEFAULT N'생산지미정',  -- 생산지역
	p_money MONEY NULL,                         -- 공급가격
	p_num INT IDENTITY NOT NULL                 -- IDENTITY(1,1)과 동일
); */

-- 매출테이블
-- [!] 외래키 지정
-- [!][컬럼명][데이터형식] FOREIGN KEY REFERENCES [테이블명]([컬럼명])
/* CREATE TABLE [dbo].[salesTb](
	s_code CHAR(10) PRIMARY KEY,                                         -- 매출코드
	s_branch NVARCHAR(10) NOT NULL,                                      -- 매출지사
	s_p_code CHAR(10) FOREIGN KEY REFERENCES [dbo].[productTb]([p_code]), -- 상품코드
	s_qty SMALLINT NULL,                                                 -- 판매수량
	s_date DATE NULL,                                                    -- 매출일
	s_num INT IDENTITY NOT NULL                                          -- IDENTITY(1, 1)과 동일
); */

-- 데이터 입력
-- 상품입력
/*
INSERT INTO [dbo].[productTb] VALUES('GD101', '나이키', '2000-12-12', '미국', 900);
INSERT INTO [dbo].[productTb] VALUES('GD102', '아디다스', '2000-01-12', '독일', 450);
INSERT INTO [dbo].[productTb] VALUES('GD103', '프로스펙스', '2000-02-12', '한국', 720);
INSERT INTO [dbo].[productTb] VALUES('GD104', 'FILA', '2000-03-15', '영국', 500);
*/

-- 매출입력
/*
INSERT INTO [dbo].[salesTb] VALUES('ST0001', '서울', 'GD101', '1700', '2022-01-01');
INSERT INTO [dbo].[salesTb] VALUES('ST0002', '서울', 'GD102', '1100', '2022-01-02');
INSERT INTO [dbo].[salesTb] VALUES('ST0003', '세종', 'GD103', '1400', '2022-01-03');
INSERT INTO [dbo].[salesTb] VALUES('ST0004', '부산', 'GD104', '700', '2022-01-04');
INSERT INTO [dbo].[salesTb] VALUES('ST0005', '광주', 'GD101', '2900', '2022-01-05');
INSERT INTO [dbo].[salesTb] VALUES('ST0006', '제주', 'GD103', '2100', '2022-01-06');
INSERT INTO [dbo].[salesTb] VALUES('ST0007', '제주', 'GD104', '300', '2022-01-07');
*/
-- 참조하는 외래키는 반드시 원본테이블에 있는 값을 입력해주어야하며, 원본 테이블에 없는 값을 입력이 되지 않음
-- 기본키(PRIMARY KEY)는 대표성, 유일성, 최소성을 만족해야함

-- 데이터 출력
SELECT * FROM [dbo].[salesTb] ORDER BY s_num
SELECT * FROM [dbo].[productTb] ORDER BY p_num

-- 판매량이 1000개가 넘는 매출정보만 출력
SELECT * FROM [dbo].[salesTb] WHERE [s_qty] >= 1000 ORDER BY [s_num]

-- 서브쿼리(IN) 활용 판매량이 1000개가 넘는 상품정보 출력
SELECT 
		[p_code] 상품코드, 
		[p_name] 상품명, 
		[p_area] 생산지, 
		[p_money] 공급가 
FROM [dbo].[productTb]
WHERE [p_code] IN ( -- 서브쿼리 파트
	  SELECT [s_p_code] FROM [dbo].[salesTb] WHERE [s_qty] >= 1000 
);
