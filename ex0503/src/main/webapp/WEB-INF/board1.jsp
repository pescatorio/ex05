<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>Insert title here</title>
<script>
	function boardWrite(){
		var html_data='';
		$.ajax({
			url : '/ajaxBoard',
			data : {
				"sno": $("#sno").val(),
				"stitle": $("#stitle").val(),
				"shit": $("#shit").val(),
				"sdate": $("#sdate").val(),
				"sname": $("#sname").val()
				},
				
			
			success : function(data){
				html_data += "<tr>";
				html_data += "<td>"+${sno}+"</td>";
				html_data += "<td>"+${stitle}+"</td>";
				html_data += "<td>"+${sname}+"</td>";
				html_data += "<td>"+${sdate}+"</td>";
				html_data += "<td>"+${shit}+"</td>";
				html_data += "</tr>";
				$("#board").prepend(date_html);
				 $("#sno").val(''),
				 $("#stitle").val(''),
				 $("#sname").val(''),
				 $("#sdate").val(''),
				 $("#count").val(''),
				
			},
			error : function(data){
				
			}
		});
	}


</script>

</head>
<body>
	<form action = "">
			<label>번호</label>
			<input type="text" id="sno" name="sno"><br>
			<label>글제목</label>
			<input type="text" id="stitle" name="stitle"><br>
			<label>날짜</label>
			<input type="text" id="sdate" name="sdate"><br>
			<label>작성자</label>
			<input type="text" id="sname" name="sname"><br>
			<label>조회수</label>
			<input type="text" id="count" name="count"><br>
			<input type="button" onclick="ajaxBoard" value="글작성"><br>
	</form>
	<table>
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>날짜</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
		<tbody id="board">
			<tr>
				<td>${sno}</td>
				<td>${stitle}</td>
				<td>${sname}</td>
				<td>${sdate}</td>
				<td>${shit}</td>
			</tr>
		</tbody>
	</table>

</body>
</html>