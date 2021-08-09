# Git / GitHub 특강

## Git이란?

### 	ㆍ2005년 리눅스 커널을 위한 도구로 리누스 토르발스가 개발

## 분산 버전 관리시스템(Distributed Version Control System)

### 	ㆍ원격저장소를 통하여 **협업**하고, 모든 **히스토리**를 공유

### 	ㆍ원격저장소(remote repository)를 통하여 협업하고, 히스토리를 공유

## Markdown이란?

### 	ㆍ 2004년 존그루버가 만든 텍스트 기반의 가벼운 마크업 언어

### 	ㆍ다양한 서식과 구조를 지원, 최소한의 문법으로 구조화

#### 			- 활용예시 : README.md / 기술블로그 / Notion

## 문법

### 	ㆍHeading(#) / List(#) / Fenced Code block(```) 

###  	ㆍInline Code block / Link / Image / Blockquotes(>) 	

### 	ㆍTable / Text 강조 / 수평선

## 관련자료

### 	ㆍGitHub Flavored Markdown 

### 		(https://github.github.com/gfm/) 

### 	ㆍ Mastering Markdown 

### 		(https://guides.github.com/features/mastering-markdown/) 

### 	ㆍMarkdown Guide (https://www.markdownguide.org/ )

## 버전관리

### 	ㆍ 버전에 따른 차이가 무엇이고 수정이유가 무엇인지 log에 

###         기록함으로써 추후 확인이 가능함

## CLI(Command Line Interface)

### 	ㆍ터미널을 통해 사용자와 컴퓨터가 상호작용하는 방식(예시 : CMD)

### 	ㆍ디렉토리 관리

#### 			- pwd(print working directory) / cd(change directory) / 

#### 			- ls(list) / mkdir(폴더 생성) / touch(파일 생성)

## 파일 라이프사이클

### 	ㆍWorking directory의 모든 파일은 특정상태를 가지며, git명령어로 변경

#### 		- Tracked : 이전부터 버전으로 관리되고 있는 파일

#### 		- Untracked : 버전으로 관리된적 없는 파일(파일을 새로 만든 경우)

#### 		- Unmodified : 수정되지 않은 파일로 git status에 나타나지 않음

#### 		- Modified : Changes not staged for commit

#### 		- Staged : Changes to be committed

## Git 명령어

### ㆍgit init(특정폴더에 git 저장소를 만들어 git으로 관리)

### ㆍgit add <file>(working directory상의 변경내용을 staging area로 추가하기 위해 사용)

### ㆍgit commit -m '<커밋메세지>'(staged상태의 파일들을 커밋을 통해 버전으로 기록)

### ㆍgit status(Git 저장소에 있는 파일의 상태를 확인하기 위하여 활용 )

### ㆍgit log(현재 저장소에 기록된 커밋을 조회)

### ㆍgit config - global user.name / user.email

### ㆍgit clone<원격저장소>(원격 저장소를 복제하여 가져옴)







 

