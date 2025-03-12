<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 12.
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parking Calculate</title>
</head>
<body>
<h1> 주차 요금 계산 결과</h1>
<p>
  차량번호 ${param.num} 고객님의 주차시간은 ${param.time}분, 구매금액은 ${param.purchase}원으로 주차요금이 계산됩니다
</p>
<p>
 정산금액은: ${fee}원입니다
</p>

</body>
</html>
