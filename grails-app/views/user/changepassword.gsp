

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="iou"/>
    <title>Change password</title>
</head>

<body>
<div class="container">
    <div class="row">
        <p></p><br><br>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4><i class="fa fa-fw fa-lock"></i>Forget Password</h4>
                </div>
                <div class="panel-body">
                    <g:form action="setpassword">
                        <input class="form-control" type="text" name="username" placeholder="User Name"/><br>
                        <input class="btn btn-primary" type="submit" value="Change Password"/>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>