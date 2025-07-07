# 🐶 PetLog Web Project (Spring + Spring Boot 통합)

Java와 Spring Framework 기반으로 개발한 웹 애플리케이션입니다.  
초기에는 **Spring MVC 구조**로 시작하여, 이후 **Spring Boot 기반으로 확장**하며  
OAuth2 로그인, 회원 관리 고도화, UI 리팩토링 등을 추가 구현했습니다.

---

## 📌 주요 기능

### ✅ 공통 기능 (Spring & Boot)
- 회원가입 / 로그인 / 로그아웃
- 게시판 기능 (공지사항 / 커뮤니티)
- 퀴즈 시스템 (정답 판단, 풀이 시간 기록)
- QnA 시스템 (문의 작성, 관리자 답변, 상태값 처리)
- 마이페이지 기능 (회원정보 수정, 비밀번호 변경)
- 댓글, 좋아요, 조회수 기능
- 아이디 / 비밀번호 찾기
- 관리자 기능 (QnA 답변, 게시판/회원 관리)
- CSS 기반 UI 구성 및 디자인 리팩토링

### 🚀 Spring Boot에서 확장된 기능
- **카카오 로그인** (OAuth2 인증 연동)
- **회원 탈퇴 기능** (단순 삭제가 아닌 탈퇴 처리 로직 포함)
- 전체 페이지 CSS 모듈화 및 UI 통일성 강화

---

## 🛠 사용 기술 스택

| 분야              | Spring Project                     | Spring Boot Project              |
|-------------------|------------------------------------|----------------------------------|
| Language          | Java                               | Java                             |
| Framework         | Spring MVC, Spring Security        | Spring Boot, Spring Security     |
| Template Engine   | JSP / JSTL                         | Thymeleaf                        |
| DB 연동           | MyBatis (또는 JDBC Template)       | Spring Data JPA                  |
| DB                | MySQL                              | MySQL                            |
| Build Tool        | Maven                              | Gradle                           |
| IDE               | Eclipse / IntelliJ IDEA            | IntelliJ IDEA                    |
| Version Control   | Git, GitHub                        | Git, GitHub                      |

---

## 🙋‍♀️ 맡은 역할 및 구현 내용

- **Spring MVC 기반 전체 게시판 구현** (공지사항 / 커뮤니티 글 작성, 수정, 삭제, 목록)
- **QnA 시스템 전체 설계**: 회원 문의 접수 → 관리자 답변 처리 → 상태값 변경 흐름 구축
- **선택형 퀴즈 출제/풀이 기능**: 정답 여부 판단, 풀이 시간 기록 포함
- 댓글, 좋아요, 조회수 기능 구현을 통한 사용자 상호작용 개발
- 로그인, 로그아웃, 아이디/비밀번호 찾기 기능
- 마이페이지 기능: 회원정보 수정, 비밀번호 변경
- **카카오 로그인 연동** (OAuth2 흐름 이해 후 Spring Boot에서 구현)
- **회원 탈퇴 기능 구현**: 논리적 삭제 또는 실삭제 처리 고려
- **전체 CSS 리팩토링**: 중복 제거, 모듈화, 버튼/메뉴/UI 통일

---

## ✨ 느낀 점

단순한 웹 기능을 넘어서, 인증 방식(OAuth2), 상태 관리, UI 리팩토링 등  
실제 서비스 수준의 개발 흐름을 경험할 수 있었습니다.  
Spring과 Spring Boot 각각의 특징을 비교하며 개발한 경험이  
기초부터 확장까지 스스로 만들며 성장하는 계기가 되었습니다.  
앞으로는 **REST API 개발**, **배포 자동화**, **테스트 코드 작성** 등도 도전하고 싶습니다.

---

## 📄 프로젝트 보고서(PDF)

- `6조 PetLog_박다솜,창지수.pdf`


📄 프로젝트 보고서(PDF)  
[6조 PetLog_박다솜,창지수.pdf 열기](./6조%20PetLog_%EB%B0%95%EB%8B%A4%EC%86%9C,%EC%B0%BD%EC%A7%80%EC%88%98.pdf)
