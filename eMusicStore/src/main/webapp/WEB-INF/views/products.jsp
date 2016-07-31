<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="template/headerForProducts.jsp" %>

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

<%@include file="template/footer.jsp" %>