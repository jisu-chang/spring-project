<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
  body {
    background-color: #fefefe;
    margin: 0;
    padding: 0;
    color: #333;
    text-align: center;
    font-family: 'Arial', sans-serif;
  }

  .table-wrapper {
    width: 90%;
    max-width: 1000px;
    margin: 40px auto;
    background-color: #fff;
    border-radius: 16px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    padding: 30px;
  }

  caption {
    font-size: 1.8em;
    font-weight: bold;
    color: #db7093;
    margin-bottom: 20px;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
  }

  th, td {
    padding: 14px 12px;
    font-size: 14px;
    border-bottom: 1px solid #eee;
    text-align: left;
  }

  th {
    background-color: #fff0f4;
    color: #555;
    font-weight: 600;
    text-align: right;
    width: 20%;
  }

  input[type="text"],
  input[type="date"],
  textarea {
    width: 100%;
    padding: 8px;
    border-radius: 8px;
    border: 1px solid #ccc;
    box-sizing: border-box;
  }

  textarea {
    resize: vertical;
    height: 160px;
  }

  .form-actions {
    text-align: center;
    margin-top: 30px;
  }

  input[type="submit"],
  input[type="reset"] {
    background-color: #ffe1e1;
    color: #444;
    border: none;
    padding: 10px 24px;
    border-radius: 24px;
    font-weight: bold;
    cursor: pointer;
    text-decoration: none;
    margin: 0 10px;
    font-size: 15px;
  }

  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #ffd2d2;
  }
</style>
</head>
<body>

<script type="text/javascript">
  function confirm_update() {
    return confirm("일정을 수정합니다 😊");
  }
</script>

<div class="table-wrapper">
  <caption>🗓 일정 수정하기</caption>

  <form action="cupdate_save" method="post" onsubmit="return confirm_update()">
    <input type="hidden" name="cal_id" value="${cdto.cal_id}">
    <input type="hidden" name="pet_id" value="${cdto.pet_id}">
    <input type="hidden" name="year" value="${current_year}">
    <input type="hidden" name="month" value="${current_month}">

    <table>
      <tr>
        <th><label for="cal_title">제목</label></th>
        <td><input type="text" id="cal_title" name="cal_title" value="${cdto.cal_title}" required></td>
      </tr>

      <tr>
        <th><label for="cal_date">날짜</label></th>
        <td><input type="date" id="cal_date" name="cal_date" value="${cdto.cal_date}" required></td>
      </tr>

      <tr>
        <th><label for="cal_content">내용</label></th>
        <td><textarea id="cal_content" name="cal_content" required>${cdto.cal_content}</textarea></td>
      </tr>
    </table>

    <div class="form-actions">
      <input type="submit" value="💾 수정하기">
      <input type="reset" value="❌ 취소하기" onclick="history.back()">
    </div>
  </form>
</div>

</body>
</html>