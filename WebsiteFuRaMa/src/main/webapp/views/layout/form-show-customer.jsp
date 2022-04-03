<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table class="table">
    <thead>
    <tr>
        <th>Mã KH</th>
        <th>Tên KH</th>
        <th>Ngày Sinh KH</th>
        <th>Giới tính KH</th>
        <th>Địa Chỉ KH</th>
        <th>Số CMND KH</th>
        <th>Email KH</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="c" items="${customerList}"  />
    <tr>
        <td>${c.id}</td>
        <td>${c.name}</td>
        <td>${c.age}</td>
        <td>${c.sex}</td>
        <td>${c.adress}</td>
        <td>${c.idCard}</td>
        <td>${c.email}</td>
        <td>${c.numberPhone}</td>
        <td>${c.customeType}</td>
    </tr>
    </tbody>
</table>
