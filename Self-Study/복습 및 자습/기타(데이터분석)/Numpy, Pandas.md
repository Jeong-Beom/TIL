# 연습문제 풀이

가격이 10,000원인 주식이 있다. 이 주식의 일간 수익률(%)은 기댓값이 0%이고, 표준편차가  1%인 표준 정규분포를 따른다고 한다.

250일 동안의 주가를 무작위로 생성하시오.

``````python
np.random.seed(2021)
price = 10000
rate = np.random.normal(0, 0.01, 10)
for i in range(10):
    price = price + np.round(price*rate[i])
    print(price, end = ', ')
    
np.random.seed(2021)
price_list = []
rate = np.random.normal(0, 0.01, 250)
price = 10000
for i in range(250):
    price += np.round(price*rate)
    price_list.append(price)
``````



# Pandas

ㆍ시계열(series), 표(table)의 형태인 데이터를 다루기 위한 시리즈(series)와 데이터프레임(dataframe)클래스를 제공하는 패키지

ㆍ시리즈 클래스 : Numpy의 1차원 배열과 비슷하지만 각 데이터에 의미를 표시하는 인덱스를 붙일 수 있음.

ㆍ공공데이터포털 등과 같은 통계사이트에서 제공하는 자료의 주요형태인 csv파일을 읽고 쓸 수 있음.

ㆍ데이터프레임 클래스 : 2차원 행렬데이터에 인덱스를 붙인것과 비슷함.

`````python
import numpy as np
import pandas as pd
s = pd.Series([1 ,2, 3, 4],
			   index = ['서울', '대구', '인천', '부산']) # 인덱스를 미설정하면 0부터 시작하는 정수값이 됨
s.index.name = '도시' # index.name을 이용하여 인덱스에도 이름을 붙일 수 있음.
s / 10000 # 연산은 시리즈의 값에만 적용되고, 인덱스값에는 영향을 주지않음.
s[3], s['대구'] # 인덱스를 이용해서 슬라이싱도 가능

data = {
    '2015': [9904312, 3448737, 2890451, 2466052],
    '2010': [9631482, 3393191, 2632035, 2431774],
    '2005': [9762546, 3512547, 2517680, 2456016],
    '2000': [9853972, 3655437, 2466338, 2473990],
    '지역': ['수도권', '경상권', '수도권', '경상권'],
    '2010-2015 증가율': [0.0283, 0.0163, 0.0982, 0.0141]
}
columns = ['지역', '2015', '2010', '2005', '2000', '2010-2015 증가율']
index = ['서울', '부산', '인천', '대구']
df = pd.DataFrame(data, index=index, columns=columns)
print(df)
data = np.arange(24).reshape(4,6)
df = pd.DataFrame(data, index=index, columns=columns)
print(df)
`````

# 데이터 입출력

``````python
%%writefile sample1.csv # jupyter notebook에서 가능
c1, c2, c3
1, 1.11, one
2, 2.22, two
3, 3.33, three
pd.read_csv('sample1.csv') # 첫번째 행을 열 이름으로 구성

%%writefile sample2.csv
1, 1.11, one
2, 2.22, two
3, 3.33, three
pd.read_csv('sample2.csv', names=['c1', 'c2', 'c3'])

%%writefile sample3.txt
c1        c2        c3        c4
0.179181 -1.538472  1.347553  0.43381
1.024209  0.087307 -1.281997  0.49265
0.417899 -2.002308  0.255245 -1.10515
pd.read_table('sample3.txt', sep='\s+') # \s+ : 한개 이상 공백으로 구분

# 자료중 건너뛰어야할 행이 있을 시 skiprows인수사용 
%%writefile sample4.txt
파일 제목: sample4.txt
데이터 포맷의 설명:
c1, c2, c3
1, 1.11, one
2, 2.22, two
3, 3.33, three
pd.read_csv('sample4.txt', skiprows=[0, 1])

%%writefile sample5.csv
c1, c2, c3
1, 1.11, one
2, , two
누락, 3.33, three
df = pd.read_csv('sample5.csv', na_values=['누락', ' ']) # 특정 인수를 NaN으로 취급
df

df.to_csv('sample5.csv') # dataframe을 csv파일로 변환




``````



