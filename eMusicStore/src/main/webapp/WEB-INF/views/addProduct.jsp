<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="template/headerForProducts.jsp" %>

<div class="container marketing">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>
            <p>add new one</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product">
        <div class="form-group form-group-lg">
            <label class="col-sm-2 control-label" for="name">name</label>
            <div class="col-sm-10">
                <form:input path="name" id="name" cssClass="form-control" />
            </div>
            <label class="col-sm-2 control-label" for="description">description</label>
            <div class="col-sm-10">
                <form:input path="description" id="description" cssClass="form-control"/>
            </div>
            <label class="col-sm-2 control-label" for="category">category</label>
            <div class="radio col-sm-10">
                <label class="checkbox-inline">
                    <form:radiobutton path="category" id="category" value="rock" />rock
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="category" id="category" value="hiphop"/>hiphop
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="category" id="category" value="pop"/>pop
                </label>
            </div>
            <label class="col-sm-2 control-label" for="price">price</label>
            <div class="col-sm-10">
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <form:input path="price" id="price" cssClass="form-control"
                                aria-label="Amount (to the nearest dollar)"/>
                </div>
            </div>
            <label class="col-sm-2 control-label" for="stock">stock</label>
            <div class="col-sm-10">
                <form:input path="stock" id="stock" cssClass="form-control"/>
            </div>
        </div>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/>">Cancel</a>
        </form:form>

<%@include file="template/footer.jsp" %>