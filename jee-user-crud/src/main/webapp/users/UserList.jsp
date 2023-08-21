<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>


<link rel="stylesheet" href="<%= request.getContextPath() %>/theme/css/sb-admin-2.css">
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>

        <a class="btn btn-primary d-none d-sm-inline-block ml-auto mr-3" href="<c:url value='/user/add'/>" id="generateReportButton">
            Dodaj użytkownika
        </a>


    </div>
    <!-- ... (other content) ... -->
    <!-- Nav Item - User Information -->


        </a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>
        <div class="card-body">
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nazwa użytkownika</th>
                    <th>Email</th>
                    <th>Akcja</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>
                            <!-- ... (other action links) ... -->
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>
