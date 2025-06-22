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
      font-family: 'Pretendard', sans-serif;
      color: #333;
    }

    .container {
      max-width: 700px;
      margin: 80px auto;
      background: #fff;
      padding: 50px 60px;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    }

    h2 {
      text-align: center;
      font-size: 26px;
      color: #f48aa5;
      font-weight: normal;
      margin-bottom: 30px;
    }

    .form-group {
      margin-bottom: 22px;
    }

    .form-group input[type="text"],
    .form-group textarea {
      width: 100%;
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
      height: 160px;
    }

    .form-group input:focus,
    .form-group textarea:focus {
      border-color: #f48aa5;
      box-shadow: 0 0 0 3px rgba(244, 138, 165, 0.2);
      outline: none;
    }

    .form-actions {
      text-align: center;
      margin-top: 30px;
    }

    .form-actions button {
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

    .form-actions button:hover {
      background-color: #db7093;
    }

    @media screen and (max-width: 768px) {
      .container {
        padding: 40px 24px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h2 style="color: #f48aa5">📮 Q&A 작성하기</h2>
    <form action="submitContact" method="post">
      <div class="form-group">
        <input type="text" name="qna_title" placeholder="제목을 입력하세요." required>
      </div>
      <div class="form-group">
        <textarea name="qna_content" placeholder="내용을 입력하세요." required></textarea>
      </div>
      <div class="form-actions">
        <button type="submit">💌 등록</button>
        <button type="reset" onclick="history.back()">❌ 취소</button>
      </div>
    </form>
  </div>
</body>
</html>