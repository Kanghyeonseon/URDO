<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>URDO</title>
    <link href="../img/sidebar/logo.svg" rel="shortcut icon" type="image/png">
    <!--CSS 링크-->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/board.css">
    <!-- JQ -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <script>
        $(document).ready(function()
        {
            let span = document.querySelectorAll('.depth1 span');
            $('#check3').prop('checked', true);
            span[4].innerHTML = '&#65293';
            span[5].style.color = getColor('--color-point');
            span[5].style.fontWeight = 'bold';
            $('#active').css('color', getColor('--color-active')).css('font-weight', 'bold');
        })
    </script>
<body>
<!--네비게이션 시작-->
<nav class="nav-all">
  <!--헤더 시작-->
  <jsp:include page="/resources/includes/header.jsp"/>
  <!--퀵 메뉴 시작-->
  <jsp:include page="/resources/includes/quickMenu.jsp"/>
  <!--메뉴 바 시작-->
  <jsp:include page="/resources/includes/menuBar.jsp"/>
  <!--로그인/로그아웃 버튼-->
  <jsp:include page="/resources/includes/loginBtn.jsp"/>
</nav>
<section class="Main">
    <div class="container">
        <div id="container_Title">
            게시판 > 창작게시판 > 그림
        </div>
        <div id="search">
            <div>그림</div>
            <div>|</div>
            <input type="text" class="searchBar" placeholder="검색어를 입력하세요">
            <img src="../img/sidebar/main-searchbar.svg" class="searchBarIcon menuIcon" id="searchBarIcon">
        </div>

        <!-- 게시판 내용 관련 코드 -->
        <!-- 게시판윗부분 시작 -->
        <div class="board_list_wrap">
            <select class="sel">
                <option>5개</option>
                <option selected>10개</option>
                <option>15개</option>
                <option>20개</option>
                <option>30개</option>
            </select>
            <select class="sel" id="seltwo">
                <option>전체</option>
                <option>유머</option>
                <option>공감</option>
            </select>
            <!-- 게시판 Table -->
            <table class="board_list" id="t1">
                <colgroup>
                    <col id="boardCol1">
                    <col id="boardCol2">
                    <col id="boardCol3">
                    <col id="boardCol4">
                    <col id="boardCol5">
                    <col id="boardCol6">
                </colgroup>
                <tr class="titlename">
                    <td class="tname">번호</td>
                    <td class="tname">썸네일</td>
                    <td class="tname" id="titleboard">글제목</td>
                    <td class="tname">조회</td>
                    <td class="tname">추천</td>
                    <td class="tname">글쓴이</td>
                    <td class="tname">날짜</td>
                </tr>
                <!-- 게시판 내용물 시작 -->
                <tr>
                    <td>1</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지1</a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지2 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지3 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지4 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지5 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지6 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지7 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지8 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지9 </a></td>
                    <td>31</td>
                    <td>1</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td><img src="../img/board/frog.png" class="pic"></td>
                    <td><a href="boardContents.html" class="boardlist">가위바위보를 이기는 방법99가지10 </a></td>
                    <td>331</td>
                    <td>91</td>
                    <td>김첨지</td>
                    <td>2022-06-16</td>
                </tr>
            </table>
            <!--  페이지 숫자 -->
        </div>
        <!-- 페이지네이션 시작 -->
        <div class="boardfoot">
            <div class="page_wrap">
                <img class="page_arrow menuIcon" id="prev" src="../img/board/page-arrow-back.svg">
                <div class="page_nation">
                    <a href="#" class="page_num on">1</a>
                    <a href="#" class="page_num">2</a>
                    <a href="#" class="page_num">3</a>
                </div>
                <img class="page_arrow menuIcon" id="next" src="../img/board/page-arrow-forward.svg">
            </div>
            <div class="post">
                <input type='button' value='게시글 작성' onclick="location.href='board_creArtWrite.html'" class="pagebtn" id="add">
            </div>
            <!--  페이지 숫자 끝-->
            <!-- 게시판 내용 관련 코드  끝-->
        </div>
    </div>
</section>

<!--전체 JS-->
<script src="../js/common.js"></script>
<!--포인트샵 JS-->
<script src="../js/pointShop.js"></script>
<!--게시판 JS-->
<script src="../js/board.js"></script>

</body>
</html>
