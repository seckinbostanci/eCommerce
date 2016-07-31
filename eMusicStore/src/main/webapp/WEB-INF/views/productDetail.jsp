<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="template/headerForProducts.jsp" %>

<div class="container marketing">

    <div class="container">

        <div class="page-header">
            <h1>Product Detail</h1>
            <p>here is the detail</p>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="#" style="width: 100%; height: 300px" />
                </div>
                <div class="col-md-6">
                    <h3>${product.name}</h3>
                    <p>${product.description}</p>
                    <p>${product.category}</p>
                    <p>${product.stock}</p>
                    <p>${product.price}</p>
                    <p class="bottom"><a href="<c:url value="/products" />">BACK</a></p>
                </div>
            </div>
        </div>

<%@include file="template/footer.jsp" %>