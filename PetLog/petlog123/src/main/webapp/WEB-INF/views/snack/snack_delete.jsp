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
      max-width: 1000px;
      margin: 60px auto;
      background-color: #fff;
      padding: 40px 60px;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    }

    h2 {
      text-align: center;
      color: #f48aa5;
      font-size: 24px;
      margin-bottom: 30px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }

    th, td {
      padding: 14px 12px;
      font-size: 15px;
      border-bottom: 1px solid #eee;
      text-align: left;
    }

    th {
      background-color: #fff0f4;
      color: #555;
      font-weight: bold;
      width: 20%;
      text-align: center;
    }

    td img {
      max-width: 120px;
      height: auto;
      border-radius: 8px;
      margin-bottom: 10px;
      margin-right: 12px;
    }

    textarea, input[type="text"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 8px;
      font-family: 'Pretendard', sans-serif;
      font-size: 14px;
    }

    .form-actions {
      text-align: center;
      margin-top: 30px;
    }

    input[type="submit"],
    input[type="reset"] {
      background-color: #ffe1e1;
      color: #333;
      border: none;
      padding: 10px 24px;
      border-radius: 10px;
      font-size: 15px;
      cursor: pointer;
      margin: 0 8px;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
      background-color: #ffd2d2;
    }
  </style>

  <script type="text/javascript">
    function confirm_delete() {
      return confirm("정말 삭제하시겠습니까?😥");
    }
  </script>
</head>
<body>
  <div class="container">
    <h2 style="color: #f48aa5">🦴 레시피 삭제하기</h2>

    <form action="delete_recipe" method="post" enctype="multipart/form-data" onsubmit="return confirm_delete()">
      <input type="hidden" name="snack_id" value="${dto.snack_id}">
      <input type="hidden" name="snack_title" value="${dto.snack_title}">
      <input type="hidden" name="snack_date" value="${dto.snack_date}">
      <input type="hidden" name="himage" value="${dto.snack_image}">

      <table>
        <tr style="border-top: 1px solid #f0f0f0;">
          <th>글번호</th>
          <td><input type="text" value="${dto.snack_id}" readonly></td>
        </tr>
        <tr>
          <th>제목</th>
          <td><input type="text" value="${dto.snack_title}" readonly></td>
        </tr>
        <tr>
          <th>이미지</th>
          <td>
            <img src="./image/${dto.snack_image}" alt="레시피 이미지">
          </td>
        </tr>
        <tr>
          <th>날짜</th>
          <td><input type="text" value="${dto.snack_date}" readonly></td>
        </tr>
      </table>

      <div class="form-actions">
        <input type="submit" value="💥 삭제하기">
        <input type="reset" value="❌ 취소하기" onclick="history.back()">
      </div>
    </form>
  </div>
</body>
</html>