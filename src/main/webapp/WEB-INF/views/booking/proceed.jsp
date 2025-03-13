<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>예약 결과</title>
    <style>
        /* 전체 배경 이미지 설정 */
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F031%2F2022%2F06%2F29%2F0000681857_006_20220629104402215.jpg&type=a340');
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
            background: rgba(0, 0, 0, 0.4); /* 어두운 반투명 배경 */
            z-index: 1;
        }

        /* 제목 스타일 */
        h2 {
            font-size: 60px;
            letter-spacing: 10px;
            color: #b5b5b5; /* 은색 메탈 느낌 */
            font-weight: bold;
            margin-bottom: 50px;
            text-transform: uppercase;
            text-shadow: 0 0 20px rgba(255, 255, 255, 0.6), 0 0 50px rgba(255, 255, 255, 0.3);
            font-family: 'Orbitron', sans-serif;
            z-index: 2;
        }

        /* 예약 결과를 담을 컨테이너 */
        .container {
            width: 60%;
            background: rgba(255, 255, 255, 0.8); /* 투명한 흰색 배경 */
            padding: 40px 50px;
            border-radius: 25px;
            box-shadow: 0 15px 50px rgba(0, 0, 0, 0.2); /* 부드러운 그림자 */
            backdrop-filter: blur(15px); /* 배경 흐림 효과 */
            border-top: 3px solid #f0f0f0; /* 은색 테두리 */
            border-bottom: 3px solid #f0f0f0; /* 은색 테두리 */
            z-index: 2;
            max-width: 1200px; /* 최대 너비 설정 */
        }

        /* 텍스트 스타일 */
        p {
            font-size: 20px;
            margin-bottom: 20px;
            color: #333; /* 어두운 색 텍스트 */
            line-height: 1.6;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 1px;
        }

        /* 반응형 디자인 (모바일 대응) */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 30px;
            }

            h2 {
                font-size: 48px;
            }
        }
    </style>
</head>
<body>
<div class="overlay"></div>
<h2>예약 결과</h2>
<div class="container">
    <p>예약이 정상적으로 이루어졌습니다.</p>
    <p>예약번호: ${uuid}</p>
    <p>예약자 이름은 ${tableBooking.customerName} 으로 예약일자는 ${tableBooking.bookingDate} 로
        총 ${tableBooking.guests}명으로 예약되셨습니다.</p>
</div>
</body>
</html>
