<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! // 함수는 !치고 따로 적는다.
private static int remainder(int i, int j) {
	return i % j;


}

private static double divide(int i, int j) {
	return (double) i / j;


}

private static int multiple(int i, int j) {
	return i * j;


}

private static int minus(int i, int j) {
	return i - j;


}

private static int add(int i, int j) {
	return i + j;

}

%>
<%
int i = 7;
int j = 2;
int res = 0;
double res2 = 0.;

res = add(i, j);
out.println(i + " + " + j + " = " + res);
out.print("<br/>"); // 줄바꾸는 태그 <br/>
res = minus(i, j);
out.println(i + " - " + j + " = " + res);

res = multiple(i, j);
out.println(i + " * " + j + " = " + res);

res2 = divide(i, j);
out.println(i + " / " + j + " = " + res2);

res = remainder(i, j);
out.println(i + " / " + j + " 의 나머지는 " + res);
%>
</body>
</html>