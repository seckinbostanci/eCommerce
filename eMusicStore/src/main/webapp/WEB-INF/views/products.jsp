<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<c:url value="/resources/favicon.ico"/>">

    <title>eMusicStore</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" />">Home</a></li>
                        <li class="active"><a href="<c:url value="/products" />">Products</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>

<div class="container marketing">

    <div class="container">

        <div class="page-header">
            <h1>All Products</h1>
            <p>Checkout all the products</p>
        </div>
        <table class="table table-hover">
            <thead>
            <tr>
                <th width="30px">Image</th>
                <th>Name</th>
                <th>Description</th>
                <th>Category</th>
                <th>Stock</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td width="30px"><img src="https://3.bp.blogspot.com/-pZeVjiUVkqk/VzBKe7EgSAI/AAAAAAAAASI/S0URSXtvGdknRCfPVkzp2AyOS59QWUK4QCLcB/s1600/default-logo.jpg" width="20px" height="20px"/></td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.category}</td>
                    <td>${product.stock}</td>
                    <td>${product.price}</td>
                    <td><i class="glyphicon glyphicon-barcode"></i></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <!-- FOOTER -->
        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<c:url value="/resources/js/jquery.min.js"/>"><\/script>')</script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>