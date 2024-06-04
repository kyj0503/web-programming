강남대학교 2024 1학기 웹프로그래밍 미니프로젝트 3조

ICT융합공학부 소프트웨어학과

- 202284007 김선우  :  DB, Servlet, Controller 설계, 숫자 맞추기 게임 구현

- 202284011 김연재  :  DB, Servlet, Controller 구현

- 202284021 배윤상  :  가위바위보 게임 구현

- 202284003 고완석  :  오목 게임 구현

-----------------------------------------------------------------------

개발환경

- 이클립스 2023-12
  - Java17
  - Tomcat Server 10.1
- H2 Database

-----------------------------------------------------------------------

src

- java

  - miniProject
  
    - User.java  :  DTO 자바 코드
    - UserDAO.java  :  DAO 자바 코드
      
    - UserController  :  컨트롤러 ( 가위바위보 게임용 서블릿 포함 )
    - GameController.java  :  오목 게임용 서블릿
    - NumberGuessServlet.java  :  숫자 맞추기 게임용 서블릿

    - GameModel.java  :  가위바위보 로직
      
- webapp

  - startPage.jsp  :  로그인 화면
  - join.jsp  :  회원가입 화면
  - userList.jsp  :  회원목록 화면
    
  - index.jsp  :  게임 선택 화면
  - GameView.jsp  :  가위바위보 게임 화면
  - ResultView.jsp  :  가위바위보 결과 화면
  - Gomoku.jsp  :  오목 게임 화면
  - numberGuess.jsp  :  숫자 맞추기 게임 화면
    