# Gitignore

ㆍ공동버전관리시 예외처리를 할 파일이나 내용을 설정하기 위해 사용

ㆍ특정 파일양식 전체를 예외처리 가능(예시 : *.txt, *.mp4)

# Portfolio 홈페이지 작성법(Githun활용)

ㆍGithub에 자신의 github ID로 이루어진 레파지토리 작성

ㆍ해당 레파지토리와 연동시킬 폴더에 index.html 작성

ㆍ레파지토리 옵션 - 페이지에서 연동실시

# Branch

ㆍ특정한 시점으로 되돌아가 해당시점에서의 내용을 확인하기 위해 활용

ㆍ프로젝트를 진행하면서 분기점을 기준으로 여러가지 항목들을 개발중인 상황

ㆍ나누어져서 개발중이던 공동프로젝트에서 오류가 발생하면 수정할 필요가 있음

ㆍ위 사항과 관련된 내용을 수정하기 위해 **branch**를 활용

ㆍ게임에서 엔딩이 특정 시점으로 나뉜다면 모든 엔딩을 보기위해 수정하는 것과 비슷함

ㆍ차이점은 게임과는 달리 브런치들은 수정 후 다른 브런치의 시점과 병합할 수 있다는 점

ㆍmaster branch는 해당 프로젝트를 대표하는 branch라고 이해하면됨.(배포되는 공식버전)

ㆍbranch 명령어

```bash
$ git branch 브랜치이름 # 생성
$ git checkout 브랜치이름 # 이동
$ git checkout -b 브랜치이름 # 생성 및 이동
$ git branch # branch 조회
(master) $ git merge 브랜치이름 # branch merge : master로 병합하려는 경우 master 브랜치에서 명령어 작성필요 / 브랜치이름을 해당 브랜치로 병합
$ git branch -d 브랜치이름 # 삭제
$ git restore b.txt # b.txt를 복구 / 복구 후 이전으로 되돌릴 수는 없음
```

# 기술관련 컨퍼런스 및 참조사이트

ㆍIF KAKAO / DEVIEW(NAVER) / Velog

# 개발프로젝트 기본세팅

ㆍGithub를 통해서 기본 세팅들을 작성(단톡방 etc) / 프로젝트 팀장

ㆍ세팅되어 있는 파일과 자료들을 clone과 pull을 실시 / 팀원(pull과 clone의 차이점 : 최초로 복제하는 것은 clone이고, 그 이후에는 pull)

# Git 명령어 정리

```bash
$ git init # git생성
$ git add (파일이름).확장자 # git에 수정된 파일 추가
$ git commit -m '커밋메세지' # staged된 파일을 커밋
$ git restore (파일이름) # 삭제된 파일 복구
$ git remote add origin(이름)<url> # 원격저장소(깃허브의 레파지토리)와 연동
$ git clone <url> # git 저장소에서 최초로 git을 복제
$ git push, pull <url> # 해당저장소에 자료 업로드, 다운로드
# branch 명령어는 위의 자료 확인
$ git reset --hard (커밋의 SPA-1코드) # 해당 커밋으로 작성된 내용을 초기화 : 공식 브랜치에서는 쓰지말것!
$ git revert (커밋한 내용) # 해당 커밋에 작성한 내용을 취소하고 되돌리고(reset은 완전삭제) 기록을 남김 
# 관계가 있는 파일끼리 묶어서 커밋하는게 필요한 이유
$ git status / log # 현재의 git 상태를 확인 / 항상 현재상태를 확인하는 것이 필요
$ git stash # 작업중 해당 명령어를 입력하면 그 이후 작업내용을 임시공간에 저장하는 것
# 모든 커밋시점은 복원이 가능, 되돌리기 가능 → 일반적으로 모든 작업을 할때는 커밋을 하며 연결해나감.
# 간혹가다가 작업하던 중 특정내용을 반영해야할 필요가 생김 / 이 때 임시공간 stash에 저장 후 이후 다시 꺼내서 작업.
```

# Github Flow

ㆍ Github로 협업하는 흐름

ㆍ[Working Directory → add → Staging Area  → commit  →  Commits] → push → Github  # [] : local directory

ㆍ정해진 답은 없으며, 각 서비스별 제안되는 흐름이 존재하여 각각의 프로젝트에 맞게 활용 가능

## 기본원칙

ㆍmaster branch는 반드시 배포가능한 상태여야 함 / feature branch는 각 기능의 의도를 알 수 있게 작성

ㆍCommit message는 매우 중요하며, 명확하게 작성 / Pull Request를 통해 협업을 진행

ㆍ변경사항을 반영하고 싶다면, master branch에 병합

## Models

ㆍShared Repository Model : 동일한 저장소를 공유하여 활용하는 방식(invite collaborator 필요) 

ㆍFork & Pull Model : Pull request를 통한 협업(구체적인 내용은 PDF참조)



