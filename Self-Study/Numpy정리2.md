#### - Indexing & slicing / arange / ones, zeros and empty

``````python
a = np.array([[1, 2, 3], [4, 5, 6]], int)
print(a[0][0]) # a의 첫번째 행, 첫번째 열에 해당하는 변수 출력 = a[ , ](list와의 차이점)
a[1, 1:3] # 1행의 1~3열에 해당하는 변수 Slicing]
np.arange(10) # array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])와 동일한 효과
np.zeros(shape = (10, ), dtype = np.int8) # array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
np.ones((2, 5)) # 2행 5열의 모든 변수가 1인 matrix 생성
np.empty((3, 5)) # 3행 5열의 비어있는 ndarray생성
``````

#### - Something like / identity / eye / diag

``````python
test_matrix = np.arange(30).reshape(5, 6) # 5행 6열의 0~29까지를 요인으로 가지는 matrix 생성
np.identitiy(5) # 5행 5열의 단위행렬 작성
np.eye(5) # 5행 5열의 배열의 대각선 항의 값이 1인 행렬 작성 np.identity(5)와 같은 값
np.eye(N = 3, M = 5, dtype = np.int8) # 3행 5열의 배열의 대각선이 1을 가지는 행렬작성
np.eye(3, 5, k = 2) # 3행 5열의 행렬, 시작 인덱스가 2인 대각선값이 1인 행렬 작성
np.diag(matrix, k = 1) # 행렬의 대각행렬의 값 추출 / k는 시작 인덱스
``````

#### - Random sampling / Operation function(sum, mean, std etc.) & Axis

``````python
np.random.seed(seed=1000) # 시드로 난수 생성
np.random.uniform(0, 1, 10).reshape(2, 5) # 0~1사이의 난수 중 10개를 균등분포로 추출하여 2열 5행의 행렬작성
np.random.normal(0, 1, 10).reshape(2, 5) # 0~1사이의 난수 중 10개를 정규분포로 추출하여 2열 5행의 행렬작성
# binomial : 이항분포 / poisson : 포아송분포 / standard_t : t분포 / f : f분포
test_array = np.arrange(1, 11)
test_array.sum(dtype = np.float) # 결과값 : 55.0
# Axis : 모든 operation function을 실행할 때, 기준이 되는 dimension 축 / 0 : 기준은 열, 1 : 기준은 행
# mean : 평균, std : 표준편차 / Mathematical function은 PDF파일 참조
``````

