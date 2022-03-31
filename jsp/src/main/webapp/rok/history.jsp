<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>지식광장(국사무쌍)</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
</head>
<body>
<div class="container">
	<p class="bg-primary">지식광장(국사무쌍)</p>
	<div>-검색창에 질문 입력시 자동검색 됩니다.</div>
	<form method="post" action="historyAct.jsp" onsubmit="return frmChk()">
	  <div class="form-group">
	    <label for="qs">문제 입력</label>
	    <input type="text" class="form-control" required="required" name="qs" id="qs" placeholder="문제를 입력하세요.">
	  </div>
	  <div class="form-group">
	    <label for="as">정답 입력</label>
	    <input type="text" class="form-control" required="required" name="an" id="an" placeholder="정답을 입력하세요.">
	  </div>
	  <button type="submit" class="btn btn-default">문제 추가하기</button>
	</form>
	<div><input type="text" class="form-control" name="q" id="q" placeholder="질문을 입력하세요." onkeyup="aaaa(this)"></div>
	<div id="res">검색된 데이터가 없습니다 질문을 입력해주세요</div>
</div>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
function frmChk(){
	alert("문제제출 똑바로 안하면 ...");
	return true;
}

function aaaa(str){
	$.ajax({
	    url     : './historyAjaxAct.jsp'
	  , type    : 'post'     // get
	  , dataType : 'html'
	  , async   : false     // 동기식으로 실행 (생략하면 비동기)
	  , data : {
	         'q' : str.value
	  }
	  // data : $("#dataForm").serialize()      // 이렇게 폼을 통째로 넘길수도 있다
	}).done(function (response){
	    console.log(response);
	    document.getElementById('res').innerHTML = response;
	  
	}).fail(function (response){
	    alert('서버 오류')
	    return false;
	});
}
</script>


</body>
</html>



