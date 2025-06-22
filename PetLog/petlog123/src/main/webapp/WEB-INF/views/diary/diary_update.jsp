<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <style>
    body {
      background-color: #fff6f6;
      margin: 0;
      padding: 0;
      color: #333;
    }

    .container {
      max-width: 1000px;
      margin: 60px auto 100px auto;
      background: #fff;
      padding: 60px 80px;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    }

    h2 {
      text-align: center;
      font-size: 26px;
      color: #f48aa5;
      font-weight: normal;
      margin-top: 0;
      margin-bottom: 30px;
    }

    .form-group {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
    }

    .form-group label {
      flex: 0 0 120px;
      font-weight: bold;
      font-size: 15px;
      color: #555;
    }

    .form-group input[type="text"],
    .form-group input[type="date"],
    .form-group input[type="file"],
    .form-group select,
    .form-group textarea {
      flex: 1;
      padding: 12px 16px;
      font-size: 15px;
      border: 1px solid #ddd;
      border-radius: 8px;
      background-color: #fffdfd;
      font-family: 'Pretendard', sans-serif;
      transition: all 0.2s ease-in-out;
      box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.05);
    }

    .form-group textarea {
      resize: vertical;
      height: 140px;
    }

    .form-group input:focus,
    .form-group textarea:focus,
    .form-group select:focus {
      border-color: #f48aa5;
      box-shadow: 0 0 0 3px rgba(244, 138, 165, 0.2);
      outline: none;
    }

    .form-actions {
      text-align: center;
      margin-top: 40px;
    }

    input[type="submit"],
    input[type="reset"] {
      background-color: #f48aa5;
      color: white;
      border: none;
      padding: 12px 30px;
      border-radius: 10px;
      font-size: 15px;
      font-weight: normal;
      margin: 0 10px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
      background-color: #db7093;
    }

    @media screen and (max-width: 768px) {
      .form-group {
        flex-direction: column;
        align-items: flex-start;
      }

      .form-group label {
        margin-bottom: 8px;
      }

      .container {
        padding: 40px 24px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>📔 일기 수정하기</h2>

    <form action="update_save" method="post" enctype="multipart/form-data" onsubmit="return confirm('정말 수정하시겠습니까? 😊')">
      <input type="hidden" name="himage" value="${dto.diary_image}">

      <div class="form-group">
        <label for="diary_id">글번호</label>
        <input type="text" id="diary_id" name="diary_id" value="${dto.diary_id}" readonly>
      </div>

      <div class="form-group">
        <label for="diary_title">제목</label>
        <input type="text" id="diary_title" name="diary_title" value="${dto.diary_title}" required>
      </div>

      <div class="form-group">
        <label for="diary_date">날짜</label>
        <input type="date" id="diary_date" name="diary_date" value="${dto.diary_date}" required>
      </div>

      <div class="form-group">
        <label for="diary_image">이미지</label>
        <img src="./image/${dto.diary_image}" width="100px" style="margin-bottom:10px;"><br>
        <input type="file" id="diary_image" name="diary_image">
      </div>

      <div class="form-group">
        <label for="diary_content">내용</label>
        <textarea id="diary_content" name="diary_content" required>${dto.diary_content}</textarea>
      </div>

      <div class="form-actions">
        <input type="submit" value="💾 수정하기">
        <input type="reset" value="❌ 취소하기" onclick="history.back()">
      </div>
    </form>
  </div>
</body>
</html>