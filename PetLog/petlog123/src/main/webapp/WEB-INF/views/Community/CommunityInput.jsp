<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

  #contentDiv {
    flex: 1;
    min-height: 250px;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 10px;
    font-size: 15px;
    line-height: 1.6;
    background: #fff;
  }

  .form-actions {
    text-align: center;
    margin-top: 40px;
  }

  input[type="submit"],
  input[type="button"] {
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
  input[type="button"]:hover {
    background-color: #db7093;
  }

  .radio-wrapper {
    display: flex;
    gap: 20px;
    padding-top: 5px;
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
  
        #contentDiv img {
  max-width: 200px !important;
  height: auto !important;
  display: block !important;
  margin: 10px auto !important;
  
}
</style>
</head>
<body>

<div class="container">
  <h2 style="color: #f48aa5">📝 게시글 작성하기</h2>

  <form action="CommunitySave" method="post" enctype="multipart/form-data" onsubmit="return beforeSubmit()">

    <c:if test="${sessionScope.user_role eq 'admin'}">
      <div class="form-group">
        <label>구분</label>
        <div class="radio-wrapper">
          <label><input type="radio" name="post_type" value="notice"> 공지사항</label>
          <label><input type="radio" name="post_type" value="normal" checked> 일반글</label>
        </div>
      </div>
    </c:if>

    <c:if test="${sessionScope.user_role ne 'admin'}">
      <input type="hidden" name="post_type" value="normal" />
    </c:if>

    <div class="form-group">
      <label for="post_title">제목</label>
      <input type="text" id="post_title" name="post_title" required>
    </div>

    <div class="form-group">
      <label for="post_content">내용</label>
      <div id="contentDiv" contenteditable="true"></div>
      <input type="hidden" name="post_content" id="hiddenContent">
    </div>

    <div class="form-group">
      <label for="post_image">사진 추가</label>
      <input type="file" id="post_image" name="post_image" accept="image/*" onchange="insertImage()" multiple>
    </div>

    <div class="form-actions">
      <input type="submit" value="💾 저장">
      <input type="button" value="❌ 취소" onclick="location.href='./main'">
    </div>

  </form>
</div>

<script>
  function beforeSubmit() {
    document.getElementById('hiddenContent').value = document.getElementById('contentDiv').innerHTML;
    return true;
  }

  function insertImage() {
    const files = document.getElementById('post_image').files;
    const contentDiv = document.getElementById('contentDiv');

    for (let i = 0; i < files.length; i++) {
      if (files[i].name) {
        const reader = new FileReader();
        reader.onload = function(e) {
          const img = document.createElement('img');
          img.src = e.target.result;
          img.style.maxWidth = '80%';
          img.style.height = 'auto';
          img.style.display = 'block';
          img.style.marginTop = '10px';
          img.style.marginLeft = 'auto';
          img.style.marginRight = 'auto';
          contentDiv.appendChild(img);
        }
        reader.readAsDataURL(files[i]);
      }
    }
  }
</script>

</body>
</html>