# Numpy

## Numpy란?

### 	ㆍ파이썬 과학처리 패키지

#### 		- Numerical Python / 파이썬의 고성능 과학계산용 패키지

#### 		- Matrix와 Vector와 같은 Array  연산의 사실상의 표준

### 	ㆍ특징

#### 		- 일반 List에 비해 빠르고, 메모리를 효율적으로 사용 / 반복문 없이 데이터 배열에 대한 처리 지원

#### 		- 선형대수와 관련된 다양한 기능제공 / C, C++ 등의 언어와 통합가능

### 	ㆍ참고자료 및 사이트

#### 		- https://docs.scipy.org/doc/numpy/user/quickstart.html

#### 		- 데이터 사이언스 스쿨(데이터 과학을 위한 파이썬 기초)

#### 		  (https://datascienceschool.net/view-notebook/39569f0132044097a15943bd8f440ca5)

#### 		- Numpy 강좌(https://www.youtube.com/playlist?list=PLBHVuYIKEkULZLnKLzRq1CnNBOBIBTkqp)

## 관련문법

### 	ㆍimport / Array 생성

`````python
import numpy as np
test_array = np.array([1,4,5,8], int) # 1차원 array
print(test_array)
print(test_array.dtype, test_array.shape) # array 전체의 데이터 타입, 차원구성을 반환
`````

#### 		- List와의 가장 큰 차이점 : Dynamic typing 불가(서로다른 변수타입을 섞어서 구성 불가)

### 	ㆍArray shape

#### 		- Vector(1차원) / Matrix(2차원) / Tensor(3차원)

``````python
Vector = np.array([1, 4, 5, 8], int)
Matrix = [[1, 2, 5, 8], [1, 2, 5, 8]]
np.array(matrix, int).shape # (3,4) : 행이 3개, 열이 4개인 matrix
Tensor = [[[1, 2, 5, 8], [2, 5, 9, 10]],
          [[1, 2, 5, 8], [2, 5, 9, 10]],
          [[1, 2, 5, 8], [2, 5, 9, 10]]]
np.array(tensor, int).shape # (3, 2, 4) : 평면이 3개, 행이 2개, 열이 4개인 tensor
``````

#### 		- ndim / size / dtype / reshape / flatten

`````python
np.array(tensor, int).ndim # 3, number of dimension 
np.array(tensor, int).size # 24
np.array([[1, 2, 3], [4.5, '5', '6']], dtype = np.float32)
test_matrix = [[1, 2, 3, 4], [5, 6, 7, 8]]
np.array(test_matrix).shape # (2,4)
np.array(test_matrix).reshape(8,) # 8개의 elements를 가진 1차원 리스트로 변환 *반드시 ,를 붙일것
np.array(test_matrix).reshape(4,2) # 2행 4열의 matrix를 4행 2열의 matrix로 변환 * -1입력시 자동으로 행(열) 개수 선정
np.array(test_matrix).reshape(2, 2, 2) # 3차원의 2개평면, 2개형, 2개열의 tensor로 변환
# flatten : 다차원 array를 1차원 array로 변환
`````



