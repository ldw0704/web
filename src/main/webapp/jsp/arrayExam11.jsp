<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int[] i = { -1, 5, 3, 8, 2, };

	int k = 0;
	for (int j = 0; j < i.length; j++) {
		if (i[j] > k) {
			k = i[j];
		}

	}
	out.println(k);
	%>
</body>
</html>