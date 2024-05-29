<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 정보</title>
</head>
<body>
    <h2>학생 정보</h2>
    [<a href="/jwbook/studentControl">새로고침</a>]
    <hr>
    <table border="1">
        <tr><th>id</th><th>이름</th><th>대학</th><th>생일</th><th>이메일</th><th>삭제</th><th>수정</th></tr>
        <c:forEach items="${students}" var="s">
            <tr>
                <td>${s.id}</td>
                <td>${s.username}</td>
                <td>${s.univ}</td>
                <td><fmt:formatDate value="${s.birth}" pattern="yyyy-MM-dd" /></td>
                <td>${s.email}</td>
                <td><a href="/jwbook/studentControl?action=delete&id=${s.id}">삭제</a></td>
                <td><a href="/jwbook/studentControl?action=edit&id=${s.id}">수정</a></td>
            </tr>
        </c:forEach>
    </table>
    <hr>
    <h2>학생 추가</h2>
    <hr>
    <form method="post" action="/jwbook/studentControl?action=insert">
        <label>이름</label>
        <input type="text" name="username"><br>
        <label>대학</label>
        <input type="text" name="univ"><br>
        <label>생일</label>
        <input type="text" name="birth" placeholder="yyyy-MM-dd"><br>
        <label>이메일</label>
        <input type="text" name="email"><br>
        <button type="submit">등록</button>
    </form>
</body>
</html>