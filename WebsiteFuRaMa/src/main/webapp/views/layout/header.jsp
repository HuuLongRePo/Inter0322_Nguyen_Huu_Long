<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>--%>
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<head>
    <title>Page Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../vendors/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../vendors/bootstrap/css/newstyle.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../vendors/bootstrap/js/bootstrap.min.js"> </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../vendors/headertext.css"/>
</head>
<body>
<div class="row ">

    <div class="  col-md-3 mx-5 my-5" >
        <img width="200px" height="200px" class="mx-2" src="/vendors/UpLoad/FuramaTravel.png">

    </div>
    <div class="col-md-5  my-1">
        <jsp:include page="textheaderFurama.jsp"/>
    </div>

    <div class="  col-md-3 my-5">
        <h1 class="my-5 ml-xl-1 ">CompanyMn</h1>
    </div>
</div>

<div class="row bg-web">
    <nav class="navbar navbar-expand-lg    col-12 bd-navbar">

        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto ml-5 ">
                <li class="nav-item ">
                    <a class="navbar-brand" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="navbar-brand" href="#">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="navbar-brand" href="#">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="navbar-brand" href="#">Service</a>
                </li>
                <li class="nav-item">
                    <a class="navbar-brand" href="#">Contract</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0 col-md-4 " >
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0 bg-light" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>