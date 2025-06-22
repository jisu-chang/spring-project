<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    .form-group select {
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

    .form-group input:focus,
    .form-group select:focus {
      border-color: #f48aa5;
      box-shadow: 0 0 0 3px rgba(244, 138, 165, 0.2);
      outline: none;
    }

    .form-actions {
      text-align: center;
      margin-top: 40px;
    }

    button[type="submit"] {
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

    button[type="submit"]:hover {
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
  <h2 style="color: #f48aa5">📄 퀴즈 등록하기</h2>

  <form action="QuizInsertSave" method="post">
    <div class="form-group">
      <label for="quiz_question">❓ 문제</label>
      <input type="text" id="quiz_question" name="quiz_question" required>
    </div>

    <div class="form-group">
      <label for="quiz_option1">①</label>
      <input type="text" name="quiz_option1" id="quiz_option1" required>
    </div>

    <div class="form-group">
      <label for="quiz_option2">②</label>
      <input type="text" name="quiz_option2" id="quiz_option2" required>
    </div>

    <div class="form-group">
      <label for="quiz_option3">③</label>
      <input type="text" name="quiz_option3" id="quiz_option3" required>
    </div>

    <div class="form-group">
      <label for="quiz_option4">④</label>
      <input type="text" name="quiz_option4" id="quiz_option4" required>
    </div>

    <div class="form-group">
      <label for="quiz_answer">✅ 정답</label>
      <select name="quiz_answer" id="quiz_answer" required>
        <option value="">정답을 등록하세요.</option>
        <option value="1">1번</option>
        <option value="2">2번</option>
        <option value="3">3번</option>
        <option value="4">4번</option>
      </select>
    </div>

    <div class="form-actions">
      <button type="submit">💾 퀴즈 등록</button>
    </div>
  </form>
</div>

</body>
</html>