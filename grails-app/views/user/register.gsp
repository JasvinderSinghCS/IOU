

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="iou"/>
    <script src="${resource(dir: 'js',file: 'register.js')}"></script>
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
                    <g:form action="newuser" name="registerform">
                        <input class="form-control" type="text" name="firstName" placeholder="First Name"/><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="form-control" type="text" name="lastName" placeholder="Last Name"/><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="form-control" type="text" name="username" placeholder="User Name"/><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="form-control" type="password" name="password" placeholder="Password"/><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="form-control" type="password" name="confPassword" placeholder="Confirm Password"/><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="form-control" type="email" name="email" placeholder="Email"/><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="form-control" type="number" name="phone" placeholder="Phone number"/><br><br>
                        <div class="error" name="errorContainer"></div>
                        <input class="btn btn-primary" type="submit" value="Login"/>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>