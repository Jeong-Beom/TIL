/* CREATE DATABASE TESTDB3 */
/* CREATE TABLE [dbo].[productTb](
	p_code CHAR(10) PRIMARY KEY,                -- ��ǰ�ڵ�
	p_name NVARCHAR(16) NOT NULL,               -- �����ڵ� ����
	p_date DATE NULL,                           -- �԰���
	p_area NVARCHAR(50) DEFAULT N'����������',  -- ��������
	p_money MONEY NULL,                         -- ���ް���
	p_num INT IDENTITY NOT NULL                 -- IDENTITY(1,1)�� ����
); */

-- �������̺�
-- [!] �ܷ�Ű ����
-- [!][�÷���][����������] FOREIGN KEY REFERENCES [���̺��]([�÷���])
/* CREATE TABLE [dbo].[salesTb](
	s_code CHAR(10) PRIMARY KEY,                                         -- �����ڵ�
	s_branch NVARCHAR(10) NOT NULL,                                      -- ��������
	s_p_code CHAR(10) FOREIGN KEY REFERENCES [dbo].[productTb]([p_code]), -- ��ǰ�ڵ�
	s_qty SMALLINT NULL,                                                 -- �Ǹż���
	s_date DATE NULL,                                                    -- ������
	s_num INT IDENTITY NOT NULL                                          -- IDENTITY(1, 1)�� ����
); */

-- ������ �Է�
-- ��ǰ�Է�
/*
INSERT INTO [dbo].[productTb] VALUES('GD101', '����Ű', '2000-12-12', '�̱�', 900);
INSERT INTO [dbo].[productTb] VALUES('GD102', '�Ƶ�ٽ�', '2000-01-12', '����', 450);
INSERT INTO [dbo].[productTb] VALUES('GD103', '���ν��彺', '2000-02-12', '�ѱ�', 720);
INSERT INTO [dbo].[productTb] VALUES('GD104', 'FILA', '2000-03-15', '����', 500);
*/

-- �����Է�
/*
INSERT INTO [dbo].[salesTb] VALUES('ST0001', '����', 'GD101', '1700', '2022-01-01');
INSERT INTO [dbo].[salesTb] VALUES('ST0002', '����', 'GD102', '1100', '2022-01-02');
INSERT INTO [dbo].[salesTb] VALUES('ST0003', '����', 'GD103', '1400', '2022-01-03');
INSERT INTO [dbo].[salesTb] VALUES('ST0004', '�λ�', 'GD104', '700', '2022-01-04');
INSERT INTO [dbo].[salesTb] VALUES('ST0005', '����', 'GD101', '2900', '2022-01-05');
INSERT INTO [dbo].[salesTb] VALUES('ST0006', '����', 'GD103', '2100', '2022-01-06');
INSERT INTO [dbo].[salesTb] VALUES('ST0007', '����', 'GD104', '300', '2022-01-07');
*/
-- �����ϴ� �ܷ�Ű�� �ݵ�� �������̺� �ִ� ���� �Է����־���ϸ�, ���� ���̺� ���� ���� �Է��� ���� ����
-- �⺻Ű(PRIMARY KEY)�� ��ǥ��, ���ϼ�, �ּҼ��� �����ؾ���

-- ������ ���
SELECT * FROM [dbo].[salesTb] ORDER BY s_num
SELECT * FROM [dbo].[productTb] ORDER BY p_num

-- �Ǹŷ��� 1000���� �Ѵ� ���������� ���
SELECT * FROM [dbo].[salesTb] WHERE [s_qty] >= 1000 ORDER BY [s_num]

-- ��������(IN) Ȱ�� �Ǹŷ��� 1000���� �Ѵ� ��ǰ���� ���
SELECT 
		[p_code] ��ǰ�ڵ�, 
		[p_name] ��ǰ��, 
		[p_area] ������, 
		[p_money] ���ް� 
FROM [dbo].[productTb]
WHERE [p_code] IN ( -- �������� ��Ʈ
	  SELECT [s_p_code] FROM [dbo].[salesTb] WHERE [s_qty] >= 1000 
);
