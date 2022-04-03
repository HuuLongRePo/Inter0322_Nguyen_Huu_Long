function onDelete(id) {
    document.getElementById("idDel").value = id;
}

function onEdit(id) {
    document.getElementById(id+"").value = id;
}

function onCreate() {
    document.getElementById("formAddCustomer").classList.toggle("display-none") ;
}