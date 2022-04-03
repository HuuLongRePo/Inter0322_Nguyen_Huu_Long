<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-6 mx-auto">
    <form>
        <div class="form-group">
            <label for="idCustomer">Nhập Mã Khách Hàng</label>
            <input type="number" class="form-control" id="idCustomer" placeholder="idCustomer">
        </div>

        <div class="form-group">
            <label for="nameCustomer">Nhập Tên Khách Hàng</label>
            <input type="text" class="form-control" id="nameCustomer" placeholder="nameCustomer">
        </div>
        <div class="form-group">
            <label for="ageCustomer">Nhập Ngày Sinh</label>
            <input type="date" class="form-control" id="ageCustomer" placeholder="ageCustomer">
        </div>
        <div class="form-group">
            <label for="sexCustomer">Giới tính</label>
            <select class="form-control" id="sexCustomer">
                <option>Nam</option>
                <option>Nữ</option>
                <option>Khác</option>
            </select>
        </div>

        <div class="form-group">
            <label for="adressCustomer">Nhập Địa Chỉ</label>
            <input type="text" class="form-control" id="adressCustomer" placeholder="adressCustomer">
        </div>
        <div class="form-group">
            <label for="idCard">Nhập idCard</label>
            <input type="text" class="form-control" id="idCard" placeholder="idCard">
        </div>
        <div class="form-group">
            <label for="emailCustomer">Nhập Email</label>
            <input type="email" class="form-control" id="emailCustomer" placeholder="emailCustomer">
        </div>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modelId">
            Insert
        </button>

        <!-- Modal -->
        <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Do you want insert new Customer?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Insert</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>