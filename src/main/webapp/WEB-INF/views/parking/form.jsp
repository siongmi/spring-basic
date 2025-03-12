<!-- form.jsp -->
<!DOCTYPE html>
<html>
<head>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <title>주차 정보 입력</title>
</head>
<body>
<h1>주차 정보 입력</h1>
<form action="${pageContext.request.contextPath}/parking/calculate">
  <label for="num">차량번호:</label>
  <input type="text" id="num" name="num" required><br><br>

  <label for="time">주차시간 (분):</label>
  <input type="number" id="time" name="time" required><br><br>

  <label for="purchase">구매금액:</label>
  <input type="number" id="purchase" name="purchase" required><br><br>

  <button type="submit">제출</button>
</form>
</body>
</html>
