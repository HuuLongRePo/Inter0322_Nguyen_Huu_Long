<%--
  Created by IntelliJ IDEA.
  User: nhacp
  Date: 3/30/2022
  Time: 1:32 PM
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
  <div class="container-fluid" >
    <div id="" class="row ">
      <div class="col-sm-3 body_bg">
        <ul class="nav flex-column">
          <li class="nav-item nav_item">
            <a class="nav-link nav_item active" href="/showEmployee">Nhân viên</a>
          </li>
          <li class="nav-item nav_item">
            <a class="nav-link nav_item" href="/showCustomer">Khách hàng</a>
          </li>
          <li class="nav-item nav_item">
            <a class="nav-link nav_item" href="#">Sản phẩm</a>
          </li>
        </ul>
      </div>
      <div class="col-9 pt-1 ">
        <!--        Form thêm nhân viên        -->
        <form class="form_input display-block">
          <h2 class="text-center">Thêm mới nhân viên</h2>
          <div class="form-group form_input row ">
            <label for="inputNameEpl" class="col-sm-2 col-form-label">Họ Tên:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" id="inputNameEpl" placeholder="Nhập họ tên nhân viên">
            </div>
            <label for="labelSexEpl" class="col-sm-2 col-form-label">Giới tính:</label>
            <div class="col-sm-4">
              <select class="form-control" id="labelSexEpl">
                <option>--Danh sách lựa chọn--</option>
                <option>Nam</option>
                <option>Nữ</option>
                <option>Khác</option>
              </select>
            </div>
          </div>
          <div class="form-group form_input row">
            <label for="inputIdCardEpl" class="col-sm-2 col-form-label">CMND/CCCD:</label>
            <div class="col-sm-4">
              <input type="password" class="form-control" id="inputIdCardEpl" placeholder="Nhập CMND..">
            </div>
            <label for="inputEmailEpl" class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-4">
              <input type="email" class="form-control" id="inputEmailEpl" placeholder="Nhập Email...">
            </div>
          </div>
          <div class="form-group form_input row">
            <label for="inputDateEpl" class="col-sm-2 col-form-label">Ngày sinh:</label>
            <div class="col-sm-4">
              <input type="date" class="form-control" id="inputDateEpl" placeholder="Nhập ngày sinh...">
            </div>
            <label for="inputSdtEpl" class="col-sm-2 col-form-label">Số điện thoại:</label>
            <div class="col-sm-4">
              <input type="tel" class="form-control" id="inputSdtEpl" placeholder="Nhập số điện thoại...">
            </div>
          </div>
          <div class="form-group form_input row">

            <label for="inputEdu" class="col-sm-2 col-form-label">Trình độ:</label>
            <div class="col-sm-4">
              <select class="form-control" id="inputEdu">
                <option>--Danh sách lựa chọn--</option>
                <option>Cao đẳng</option>
                <option>Đại học</option>
                <option>Sau đại học</option>

              </select>
            </div>
            <label for="inputDivision" class="col-sm-2 col-form-label">Bộ phận:</label>
            <div class="col-sm-4">
              <select class="form-control" id="inputDivision">
                <option>--Danh sách lựa chọn--</option>
                <option>Sale-Marketing</option>
                <option>Hành chính</option>
                <option>Phục vụ</option>
                <option>Quản lý</option>
              </select>
            </div>
          </div>
          <div class="form-group form_input row">
            <label for="inputPosition" class="col-sm-2 col-form-label">Vị trí:</label>
            <div class="col-sm-3">
              <select class="form-control" id="inputPosition">
                <option>--Danh sách lựa chọn--</option>
                <option>Quản Lý</option>
                <option>Nhân viên</option>
              </select>
            </div>
            <label for="inputAddressEpl" class="col-sm-2 col-form-label">Địa chỉ:</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" id="inputAddressEpl" placeholder="Nhập Địa chỉ...">
            </div>

          </div>

          <button type="submit" class="btn btn-primary">Add Employee</button>
        </form>
      </div>
    </div>
  </div>


  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Xóa nhân viên!</h5>
<%--          <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--            <span aria-hidden="">&times;</span>--%>
<%--          </button>--%>
        </div>
        <div class="modal-body">
          <p>Bạn có thật sự muốn xóa</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-danger">Delete</button>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="view/footer.jsp" />
</div>

</body>
</html>
