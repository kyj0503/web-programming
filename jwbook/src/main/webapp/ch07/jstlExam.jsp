<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 종합 예제</title>
</head>
<body>
    <h2>JSTL 종합 예제</h2>
    <hr>

    <h3>set, out</h3>
    <c:set var="product1" value="<b>애플 아이폰</b>" />
    <c:set var="product2" value="<b>삼성 갤럭시 노트</b>" />
    <c:set var="intArray" value="${[1,2,3,4,5 ]}" />
    
    <p> product1(jstl): <c:out value="${product1 }" default="Not registered" escapeXml="true" /></p>
    <p> product1(el) : ${product1 }</p>
    <p> intArray[2] : ${intArray[2]}</p>
    <hr>
    
    <h3>forEach: 배열 출력</h3>
    <ul>
    </ul>
    
    <h3>forTokens</h3>
    <c:forTokens var="city" items="Seoul|Tokyo|New York|Toronto" delims="|" varStatus="i">
      <c:if test="${i.first}">도시 목록 : </c:if>
      ${city}
      <c:if test="${!i.last}">,</c:if>
    </c:forTokens>
    
    
</body>
</html>