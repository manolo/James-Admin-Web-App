<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="<%=basePath%>" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <style type="text/css" media="all">@import "html/layout1.css";</style>
        <title>Add User Duplicate</title>
    </head>
    <body>

    <f:view>
    <jsp:include page="/WEB-INF/html/header.html" />
    <h1>Add User Duplicate</h1>

      <c:if test="${adminUserBean.loggedIn != 1}">
        <p>You are not logged in. Please go to the
        <a href="jsp/loginForm.faces">login page</a>.</p>
    </c:if> <!-- if user is not logged in -->

    <c:if test="${adminUserBean.loggedIn == 1}">

        <p>It's sooo nice to see that <h:outputText id="mainPage1"
        value="#{adminUserBean.userName}" />
        decided to come to church this week.</p>

        <p>A user with the name <h:outputText id="username1"
        value="#{userManagerBean.username}" /> already exists in the database. Go
            back to the <a href="jsp/addUserForm.faces">Add User Form</a> and try again.
        </p>

    </c:if> <!-- if user is logged in  -->
<jsp:include page="/WEB-INF/html/footer.html" />

    </f:view>



    </body>
</html>
