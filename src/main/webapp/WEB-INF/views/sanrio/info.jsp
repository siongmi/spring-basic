<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 12.
  Time: 오후 5:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>산리오친구들 정보</title>
</head>
<body>
<h2>산리오친구들 정보</h2>
<p>
    이름: ${param.name}짱~🤍
</p>
<p>
    키: ${param.height}cm
</p>
<p>
    몸무게: ${param.weight}kg
</p>
<p>
    기엽냐? ${param.cute}!
</p>
<p>
    기여운 산리오 친구들의 bmi : ${bmi}
</p>

</body>
</html>
