<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>예약 페이지</title>
    <style>
        /* 전체 배경 이미지 설정 */
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.namu.wiki%2Fi%2FDpJoKTGA9iqdyERsKiB-KnyBJsWW9S-qdsj1Mm0ON_RSxt0nYF9LBB56r09XNNTVE8Tx25Y2B-fppMaqlsMQDA.webp&type=a340');
            background-size: cover; /* 배경 이미지 크기를 화면 크기에 맞게 설정 */
            background-position: center center; /* 이미지가 중앙에 위치하도록 */
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-attachment: fixed;
            overflow: hidden;
        }

        /* 배경에 어두운 레이어 추가 */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.2); /* 조금 더 밝고 투명한 어두운 레이어 */
            z-index: 1;
        }

        /* 제목 스타일 */
        h1 {
            font-size: 72px;
            letter-spacing: 15px;
            color: #b5b5b5; /* 은색 메탈 느낌 */
            font-weight: bold;
            margin-bottom: 50px;
            text-transform: uppercase;
            text-shadow: 0 0 20px rgba(255, 255, 255, 0.6), 0 0 50px rgba(255, 255, 255, 0.3);
            font-family: 'Orbitron', sans-serif;
            z-index: 2;
        }

        /* 예약 폼을 담을 컨테이너 */
        .container {
            width: 60%;
            background: rgba(255, 255, 255, 0.8); /* 투명한 흰색 배경 */
            padding: 40px 50px;
            border-radius: 25px;
            box-shadow: 0 15px 50px rgba(0, 0, 0, 0.2); /* 좀 더 부드러운 그림자 */
            backdrop-filter: blur(15px); /* 배경 흐림 효과 */
            border-top: 3px solid #f0f0f0; /* 은색 테두리 */
            border-bottom: 3px solid #f0f0f0; /* 은색 테두리 */
            z-index: 2;
            max-width: 1200px; /* 최대 너비 설정 */
        }

        /* 각 항목의 레이아웃 */
        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            font-size: 18px;
            margin-bottom: 8px;
            display: block;
            color: #333; /* 좀 더 어두운 색으로 변경 */
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* 입력 필드 스타일 */
        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group input[type="date"],
        .form-group textarea {
            width: 100%;
            padding: 18px;
            font-size: 16px;
            border: 2px solid #f0f0f0; /* 은색 테두리 */
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.9); /* 투명한 배경으로 수정 */
            color: #333; /* 텍스트 색상을 더 어두운 색으로 설정 */
            box-sizing: border-box;
            transition: all 0.3s ease;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 1px;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="number"]:focus,
        .form-group input[type="date"]:focus,
        .form-group textarea:focus {
            border: 2px solid #f0f0f0;
            background-color: rgba(255, 255, 255, 1);
            outline: none;
        }

        /* 요청사항 입력란 */
        .form-group textarea {
            height: 150px;
            resize: vertical;
        }

        /* 제출 버튼 스타일 */
        button {
            background-color: #b5b5b5; /* 은색 메탈 느낌 */
            color: #000;
            border: none;
            padding: 16px 0;
            font-size: 18px;
            border-radius: 10px;
            cursor: pointer;
            width: 100%;
            font-weight: bold;
            letter-spacing: 1px;
            transition: transform 0.3s ease, background-color 0.3s ease;
            text-transform: uppercase;
            font-family: 'Orbitron', sans-serif;
        }

        button:hover {
            background-color: #e0e0e0; /* 은색 호버 색상 */
            transform: scale(1.05); /* 버튼 크기 확대 */
        }

        /* 반응형 디자인 (모바일 대응) */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 30px;
            }

            h1 {
                font-size: 48px;
            }
        }
    </style>
</head>
<body>
<div class="overlay"></div>
<h1>예약 페이지</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/booking/proceed">
        <div class="form-group">
            <label for="customerName">예약자 이름</label>
            <input type="text" id="customerName" name="customerName"  placeholder="이름을 입력해주세요" />
        </div>
        <div class="form-group">
            <label for="guests">손님 수</label>
            <input type="number" id="guests" name="guests"  min="1" placeholder="손님 수를 입력해주세요" />
        </div>
        <div class="form-group">
            <label for="bookingDate">예약 날짜</label>
            <input type="date" id="bookingDate" name="bookingDate"  />
        </div>
        <div class="form-group">
            <label for="contact">이메일 주소</label>
            <input type="text" id="contact" name="contact"  placeholder="이메일을 입력해주세요" />
        </div>
        <div class="form-group">
            <label for="requests">요청 사항</label>
            <textarea id="requests" name="requests" placeholder="요청 사항을 적어주세요" ></textarea>
        </div>
        <button type="submit">제출</button>
    </form>
</div>
</body>
</html>
