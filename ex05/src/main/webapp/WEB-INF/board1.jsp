<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕</title>
<style type="text/css">
	
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	function boardWrite(){
		alert("test");
		var date_html = "";
	 	$.ajax({
			url : "/ajaxBoard" ,
			data : {
				"sno": $("#sno").val(),
				"stitle": $("#stitle").val(),
				"count": $("#count").val(),
				"sdate": $("#sdate").val(),
				"sname": $("#sname").val(),
			},
			contentType:"application/json";
			success : function(data){
				data_html+="<tr>";
				data_html+="<td>"+${sno}+"</td>";
				data_html+="<td>"+${title}+"</td>";
				data_html+="<td>"+${sdate}+"</td>";
				data_html+="<td>+"${sname}+"</td>";
				data_html+="<td>"+${count}+"</td>";
				data_html+="</tr>";
				$("#board").prepend(date_html);
				 $("#sno").val(''),
				 $("#stitle").val(''),
				 $("#sname").val(''),
				 $("#sdate").val(''),
				 $("#count").val(''),
			},
			error : function(data){
				alert("에러");	
			}
		}); 
		
	}

</script>

</head>
<body>
	<form action = "ajaxBoard">
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
		<input type="button" onclick="" value="글작성"><br>
		
	</form>
	
	
	<table>
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>날짜</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
		<tbody id = "board">
			<!-- prepend 추가 -->
			
			<!-- prepend 끝 -->
			<tr>
				<td>${sno}</td>
				<td>${title}</td>
				<td>${sdate}</td>
				<td>${sname}</td>
				<td>${count}</td>
			</tr>
		</tbody>
	</table>


</body>
</html>