<!-- form.jsp -->
<!DOCTYPE html>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>산리오친구들</title>
</head>
<body>
<h1>산리오친구들 정보</h1>
<form action="${pageContext.request.contextPath}/sanrio/info">
    <div>
        <label> 산리오친구 이름 </label>
        <div>
            <input type="text"  name="name"/>
        </div>
    </div>
    <div>
        <label> 키 </label>
        <div>
            <input type="number"  name="height"/>
        </div>
    </div>
    <div>
        <label> 몸무게 </label>
        <div>
            <input type="number"  name="weight"/>
        </div>
    </div>
    <div>
            <label>성별</label>
        <div>
            <label><input type="radio" value="기여움" name="cute"/>기여움</label>
            <label><input type="radio" value="안기여움" name="cute"/>안기여움</label>
        </div>
    </div>

    <button type="submit">제출</button>
</form>
</body>
</html>
