<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 22/6/15
  Time: 3:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="iou"/>
    <title></title>
</head>

<body>
<g:render template="error" model='[msg : "${flash.message}"]'/>
<g:if test="${flash.message}">
    <script>
        $('#myModal1').modal('show')
    </script>
</g:if>
<div class="container">
    <div class="row">
        <p></p><br><br>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4><i class="fa fa-fw fa-lock"></i> Login</h4>
                </div>
                <div class="panel-body">
                    <g:form action="auth">
                        <input class="form-control" type="text" name="username" placeholder="User Name"/><br>
                        <input class="form-control" type="password" name="password" placeholder="Password"/><br><br>
                        <input class="btn btn-primary" type="submit" value="Login"/>
                    </g:form>
                    <g:link controller="user" action="changepassword">Forget password?</g:link>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>