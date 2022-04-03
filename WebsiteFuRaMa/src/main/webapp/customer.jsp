<%--
  Created by IntelliJ IDEA.
  User: nhacp
  Date: 3/30/2022
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql " %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="view/head.jsp" />
<body>
<div class="app">
    <jsp:include page="view/header.jsp" />
    <div class="container-fluid">
        <div id="" class="row">
                <p>${message}</p>
                <%--   hiển thị khách hàng             --%>
                <c:if test="${empty listp}" >
                    <h2 class="text-danger">
                        Không có khách hàng nào!
                        <button onclick="onCreate()">Thêm</button>
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
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa khách hàng này!</h5>
                    <%--          <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                    <%--            <span aria-hidden="">&times;</span>--%>
                    <%--          </button>--%>
                </div>
                <form method="post" action="/showCustomer">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" id="idDel">
                    <div class="modal-body">
                        <p>Bạn có thật sự muốn xóa</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <div class="container bg_form">
        <form id="formAddCustomer" class="form_input display-none" action="/showCustomer" method="post">
            <input type="hidden" name="action" value="create">
            <h2 class="text-center">Thêm mới khách hàng</h2>
            <div class="form-group form_input row ">
                <label for="inputName" class="col-sm-2 col-form-label">Họ Tên:</label>
                <div class="col-sm-4">
                    <input type="text" name="name" class="form-control" id="inputName" placeholder="Nhập họ tên khách hàng">
                </div>
                <label for="labelSex" class="col-sm-2 col-form-label">Giới tính:</label>
                <div class="col-sm-4">
                    <select class="form-control" name="sex" id="labelSex">
                        <option>--Danh sách lựa chọn--</option>
                        <option>Nam</option>
                        <option>Nữ</option>
                        <option>Khác</option>
                    </select>
                </div>
            </div>
            <div class="form-group form_input row">
                <label for="inputIdCard" class="col-sm-2 col-form-label">CMND/CCCD:</label>
                <div class="col-sm-4">
                    <input type="password" name="idCard" class="form-control" id="inputIdCard" placeholder="Nhập CMND..">
                </div>
                <label for="inputEmail" class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-4">
                    <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Nhập Email...">
                </div>
            </div>
            <div class="form-group form_input row">
                <label for="inputDate" class="col-sm-2 col-form-label">Ngày sinh:</label>
                <div class="col-sm-4">
                    <input type="date" name="dateOfBirth" class="form-control" id="inputDate" placeholder="Nhập ngày sinh...">
                </div>
                <label for="inputSdt" class="col-sm-2 col-form-label">Số điện thoại:</label>
                <div class="col-sm-4">
                    <input type="tel" name="sdt" class="form-control" id="inputSdt" placeholder="Nhập số điện thoại...">
                </div>
            </div>
            <div class="form-group form_input row">

                <label for="inputCustomerType" class="col-sm-2 col-form-label">Loại khách:</label>
                <div class="col-sm-3">
                    <select name="typeCustomer" class="form-control" id="inputCustomerType">
                        <option>--Danh sách lựa chọn--</option>
                        <option>Diamond</option>
                        <option>Platinium</option>
                        <option>Gold</option>
                        <option>Silver</option>
                        <option>Member</option>
                    </select>
                </div>
                <label for="inputAddress" class="col-sm-2 col-form-label">Địa chỉ:</label>
                <div class="col-sm-5">
                    <input type="text" name="address" class="form-control" id="inputAddress" placeholder="Nhập Địa chỉ...">
                </div>

            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div>
    <!--          Form thêm khách hàng              -->


    <jsp:include page="view/footer.jsp" />
</div>
</body>
<script src="src/main.js"></script>
</html>