<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql " %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/header.jsp"/>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<div class="app">

    <div class="container-fluid">
        <div id="" class="row">
            <c:if test="${empty listp}" >
                <h2 class="text-danger">
                    Không có khách hàng nào!
                </h2>
            </c:if>
            <c:if test="${!empty listp}" >
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Day</th>
                        <th scope="col">Giới tính</th>
                        <th scope="col">SDT</th>
                        <th scope="col">Email</th>
                        <th scope="col">Dịa Chỉ</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${listp}" var="c" varStatus="loop">
                        <tr>
                            <th scope="row">${c.id}</th>
                            <td>${c.name}</td>
                            <td>${c.dateOfBirth}</td>
                            <td>${c.sex}</td>
                            <td>${c.sdt}</td>
                            <td>${c.email}</td>
                            <td>${c.address}</td>
                            <td>   <!-- Button trigger modal -->
                                <button onclick="onDelete(${c.id})" type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
                                    Delete
                                </button>

                            </td>
                            <td>
                                <form method="get" action="/showCustomer">
                                    <input type="hidden"  name="action" value="update" >
                                    <input type="hidden"  name="id" id="()">
                                    <input type="hidden"  name="index" id="${loop.index}">
                                    <button onclick="onEdit(${loop.index})" type="submit" class="btn btn-primary" data-toggle="modal">
                                        Edit
                                    </button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>

        <jsp:include page="layout/show-pagination.jsp"/>
    </div>
</div>
<jsp:include page="layout/footer.jsp"/>