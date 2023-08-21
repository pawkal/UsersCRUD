<%--
  Created by IntelliJ IDEA.
  User: pawkal
  Date: 21.08.2023
  Time: 09:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>
<link rel="stylesheet" href="<%= request.getContextPath() %>/theme/css/sb-admin-2.css">
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
        </div>
        <div class="card-body">
            <p><strong>ID:</strong> ${user.id}</p>
            <p><strong>Nazwa użytkownika:</strong> ${user.userName}</p>
            <p><strong>Email:</strong> ${user.email}</p>
            <p><strong>Inne dane użytkownika:</strong> ...</p>

            <!-- Dodatkowe informacje lub linki do akcji -->
            <!-- Na przykład, link do edycji lub powrót do listy użytkowników -->
            <a href="<c:url value="/user/list"/>" class="btn btn-primary">Powrót</a>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
