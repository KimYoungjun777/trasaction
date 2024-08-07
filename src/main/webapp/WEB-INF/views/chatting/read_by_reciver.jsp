<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dev.mvc.chatting.ChattingVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, minimum-scale=1.0, maximum-scale=10.0, width=device-width" /> 
<title>종류 정보</title>
<link rel="shortcut icon" href="/css/images/shortcut.png" /> <%-- /static 기준 --%>
<link href="/css/style.css" rel="Stylesheet" type="text/css"> <!-- /static 기준 -->

  
</head>
<body>
<c:import url="/menu/top.do"/>
<div class='title_line'>받은 메시지 조회</div>
  <%
  ChattingVO chattingVO = (ChattingVO)request.getAttribute("chattingVO");  
  %>
  <div class="container mt-3">
    <ul class="list-group list-group-flush">
      <li class="list-group-item">보낸 사람: <%=chattingVO.getVname() %></li>
      <li class="list-group-item">받은 날짜: <%=chattingVO.getRdate() %></li>
      <li class="list-group-item">내용: <%=chattingVO.getMsg() %></li>
    </ul>
  </div>

  <div class="content_body_bottom">
    <button type="button" onclick="location.href='./create.do?reciverno=${chattingVO.visitorno}&rname=${chattingVO.vname }'" class="btn btn-secondary btn-sm">답장</button>
    <button type="button" onclick="location.href='./chatting_list_by_reciver.do'" class="btn btn-secondary btn-sm">목록</button> 
  </div>

<jsp:include page="../menu/bottom.jsp" flush='false' /> 
</body>
</html>

