<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
  body {
    margin: 0;
    padding: 0;
    color: #333;
  }

  .container {
    max-width: 900px;
    margin: 100px auto 80px auto;
    background: #fff;
    padding: 50px 60px;
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
    border: 1px solid #e0e0e0;
  }

  h2 {
    text-align: center;
    font-size: 28px;
    color: #d85a8a;
    margin-top: 0;
    margin-bottom: 40px;
  }

  .form-group {
    display: flex;
    align-items: center;
    margin-bottom: 22px;
  }

  .form-group label {
    flex: 0 0 140px;
    font-weight: bold;
    font-size: 15px;
    color: #555;
  }

  .form-group input[type="text"],
  .form-group input[type="date"],
  .form-group textarea,
  .form-group select {
    flex: 1;
    padding: 10px 12px;
    font-size: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    transition: border-color 0.3s ease;
    box-sizing: border-box;
  }

  .form-group textarea {
    resize: vertical;
    height: 140px;
  }

  .form-group input:focus,
  .form-group textarea:focus,
  .form-group select:focus {
    border-color: #a3d8cd;
    outline: none;
  }

  .form-actions {
    text-align: center;
    margin-top: 40px;
  }

  input[type="submit"],
  input[type="reset"] {
    background-color: #d85a8a;
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    margin: 0 12px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #c14573;
  }

  @media screen and (max-width: 768px) {
    .form-group {
      flex-direction: column;
      align-items: flex-start;
    }

    .form-group label {
      margin-bottom: 8px;
    }
  }
</style>
</head>
<body>

<!-- 반려동물이 없으면 경고 -->
<c:if test="${empty petlist}">
  <script>
    alert("🐶 먼저 반려동물을 등록해주세요!");
    history.back();
  </script>
</c:if>

<div class="container">
  <h2>📅 일정 등록하기</h2>

  <form action="cal_save" method="post">

    <div class="form-group">
      <label for="pet_id">반려동물 선택</label>
      <select name="pet_id" id="pet_id" required>
        <c:forEach var="pet" items="${petlist}">
          <option value="${pet.pet_id}">${pet.pet_name}</option>
        </c:forEach>
      </select>
    </div>

    <div class="form-group">
      <label for="cal_title">제목</label>
      <input type="text" id="cal_title" name="cal_title" required>
    </div>

    <div class="form-group">
      <label for="cal_date">날짜</label>
      <input type="date" id="cal_date" name="cal_date" required>
    </div>

    <div class="form-group">
      <label for="cal_content">내용</label>
      <textarea id="cal_content" name="cal_content" required></textarea>
    </div>

    <div class="form-actions">
      <input type="submit" value="💾 저장하기">
      <input type="reset" value="❌ 취소하기" onclick="history.back()">
    </div>

  </form>
</div>

</body>
</html>