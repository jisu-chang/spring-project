<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<style>
  body {
    background-color: #fff6f6;
    margin: 0;
    padding: 0;
    font-family: 'Pretendard', sans-serif;
    color: #333;
  }

  h2 {
    text-align: center;
    color: #f48aa5;
    font-weight: normal;
    font-size: 1.8em;
    margin-bottom: 30px;
  }

  .btn {
    background-color: #ffe1e1;
    color: #333;
    border: none;
    padding: 8px 20px;
    border-radius: 10px;
    font-weight: normal;
    cursor: pointer;
    text-decoration: none;
    display: inline-block;
  }

  .btn:hover {
    background-color: #ffd2d2;
  }

  .table-wrapper {
    background-color: white;
    width: 100%;
    max-width: 1000px;
    margin: 40px auto 80px auto;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    padding: 30px;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0,0,0,0.05);
    border-radius: 8px;
    overflow: hidden;
  }

  th, td {
    padding: 14px 12px;
    font-size: 1em;
    border-bottom: 1px solid #eee;
    text-align: center;
  }

  th {
    background-color: #fff0f4;
    color: #555;
    font-weight: bold;
  }

  td a {
    color: #333;
    text-decoration: none;
    font-weight: 500;
  }

  td a:hover {
    color: #d65b7b;
    text-decoration: underline;
  }

  .pagination {
    width: 100%;
    text-align: center;
    margin: 40px 0;
  }

  .pagination a {
    margin: 0 6px;
    padding: 6px 12px;
    color: #888;
    text-decoration: none;
    border-radius: 4px;
    transition: all 0.2s;
  }

  .pagination a.current {
    background-color: #db7093;
    color: #fff;
    font-weight: bold;
  }

  .pagination a:hover {
    background-color: #ffe1e1;
  }
</style>
</head>
<body>
<div class="table-wrapper">
  <h2>📩 Q&A</h2>

  <div style="overflow: hidden; margin-bottom: 10px;">
    <a href="QnAinput" class="btn" style="float: right;">새 문의글 작성</a>
  </div>

  <table>
    <thead>
      <tr>
        <th>번호</th>
        <th>작성자</th>
        <th>제목</th>
        <th>작성일</th>
        <th>상태</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${list}" var="dto">
        <tr>
          <td>${dto.qna_id}</td>
          <td>${dto.user_login_id}</td>
          <td><a href="qnadetail?qnum=${dto.qna_id}">${dto.qna_title}</a></td>
          <td>${dto.qna_date}</td>
          <td>${dto.qna_status}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

  <c:if test="${not empty requestScope.alertMsg}">
    <script>
      alert("${requestScope.alertMsg}");
    </script>
  </c:if>

  <div class="pagination">
    <c:forEach var="i" begin="1" end="${page_count}">
      <a href="qnalist?page=${i}" class="${i == page ? 'current' : ''}">${i}</a>
    </c:forEach>
  </div>
</div>
</body>
</html>