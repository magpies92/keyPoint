<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>

<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="32x32" href="/resources/image/favicon-32x32.png">

<style type="text/css">

@import
	url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css)
	;
	
	
body{
	font-family: 'NanumSquare', sans-serif;
}



/* ����¡ */


#pagination {
  display: inline-block;
}

#pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
}



#pagination a.active {
	background-color: #b9b9b9;
  color: white;
  border: 1px solid #b9b9b9;
}

#pagination a:hover:not(.active,.none) {background-color: #ddd;}

.center {
  text-align: center;
}


table {
	margin : 0px auto;
	border: 1px #a39485 solid;
	font-size: .9em;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	width: 425px;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
	
}

th {
	text-align: center;
	background: #b9b9b9;
	font-weight: 700;
}


td, th {
	padding: 1em .5em;
	
	vertical-align: middle;
}

td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
	background: #fff;
	text-align: center;
}
h2{
	text-align: center;
}

#con:hover{
	background-color : #e1e1e1;
	cursor:pointer;
}

</style>
</head>
<body>
<h2>
�����ڵ� ��ȸ
</h2>
<br>
<form>
<table>
<tr>
	<td>�����ڵ�</td><td><input type="text" name="lineCode" style="width:100px;"></td>
	<td><input type="submit" value="��ȸ"></td></tr>
</table>
</form>
<table>
<tr><th>�����ڵ�</th></tr>
<c:forEach var="workLineList" items="${workLineList}">
<tr onclick="selectWork('${workLineList.lineCode }')"> <!-- ,'${itemList.itemId}' -->
	<td id="con">${workLineList.lineCode}</td>
	</tr>

    <script type="text/javascript">

        function selectWork(a){ // �θ�â���� �� �ѱ��
		  
          opener.document.getElementById("lineCode").value = a
          window.close();
        }

   </script>

</c:forEach>
</table>
<br>
<div class="center">
<div id="pagination">

    <!-- 1������ ���� -->
	<c:if test="${pageDTO.currentPage > 1}">
	<a href="${pageContext.request.contextPath }/workOrder/workLineList?lineCode=${search.lineCode}&pageNum=${pageDTO.currentPage-1}"><</a>
	</c:if>

<!-- 10������ ���� -->
	 <c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
	<a href="${pageContext.request.contextPath }/workOrder/workLineList?lineCode=${search.lineCode}&pageNum=${pageDTO.startPage-PageDTO.pageBlock}"><<</a>
	</c:if>
	
	<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	<a href="${pageContext.request.contextPath }/workOrder/workLineList?lineCode=${search.lineCode}&pageNum=${i}" <c:if test="${pageDTO.pageNum eq i}">class="active"</c:if>>${i}</a> 
	</c:forEach>

<!-- 1������ ���� -->	
	<c:if test="${pageDTO.currentPage < pageDTO.pageCount}">
	<a href="${pageContext.request.contextPath }/workOrder/workLineList?lineCode=${search.lineCode}&pageNum=${pageDTO.currentPage+1}">></a>
	</c:if>

<!-- 10������ ���� -->
 	<c:if test="${pageDTO.endPage < pageDTO.pageCount}">
	<a href="${pageContext.request.contextPath }/workOrder/workLineList?lineCode=${search.lineCode}&pageNum=${pageDTO.startPage + pageDTO.pageBlock}">>></a>
	</c:if>
	
</div>
</div>
</body>
</html>