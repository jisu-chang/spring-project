<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">

  <!-- jQuery CDN -->
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

  <style>
    body {
      background-color: #fff6f6;
      margin: 0;
      padding: 0;
      color: #333;
    }

    .table-wrapper {
      background-color: white;
      width: 100%;
      max-width: 800px;
      margin: 60px auto 100px auto;
      border-radius: 12px;
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
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0,0,0,0.05);
      border-radius: 8px;
      overflow: hidden;
      margin-top: 30px;
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

    td img {
      max-width: 70px;
      height: auto;
      border-radius: 12px;
    }

    .btn {
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

    .btn:hover {
      background-color: #db7093;
    }
    
    h2 {text-align: center;
    margin-top: 5px;}
  </style>

  <script>
    function buyItem(itemId) {
      $.ajax({
        type: "POST",
        url: "${pageContext.request.contextPath}/items/buy_items",
        data: { item_id: itemId },
        success: function(response) {
          response = response.trim();

          if (response === "already_owned") {
            alert("이미 보유한 아이템입니다.");
          } else if (response === "not_enough_grapes") {
            alert("포도알이 부족합니다!");
          } else if (response === "success") {
            alert("구매 성공!");
            location.reload();
          } else {
            alert("예상치 못한 응답: " + response);
          }
        },
        error: function() {
          alert("요청 실패");
        }
      });
    }
  </script>
</head>
<body>

  <div class="table-wrapper">
    <h2 style="color: #f48aa5">🎁 아이템 구매하기</h2>

    <table>
      <tr>
        <th>No.</th>
        <th>아이템명</th>
        <th>포도알</th>
        <th>카테고리</th>
        <th>아이템</th>
      </tr>
      <tr>
        <td>${dto.item_id}</td>
        <td>${dto.item_name}</td>
        <td>${dto.item_cost}</td>
        <td>${dto.item_category}</td>
        <td><img src="./image/${dto.item_image}" alt="아이템 이미지"></td>
      </tr>
      <tr>
        <td colspan="5" style="text-align: center; border-bottom: none;">
          <button type="button" class="btn" onclick="buyItem(${dto.item_id})">💰 구매하기</button>
          <button type="button" class="btn" onclick="history.back()">❌ 취소하기</button>
        </td>
      </tr>
    </table>
  </div>

</body>
</html>