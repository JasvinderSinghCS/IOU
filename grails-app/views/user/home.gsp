<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 22/6/15
  Time: 7:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="iou"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'styles.css')}" />
    <title></title>
</head>

<body>

%{--<g:render template="picEdit" model='[msg : session.user ]'/>--}%
<g:render template="error" model='[msg : "${flash.message}"]'/>
<g:if test="${flash.message}">
    <script>
        $('#myModal1').modal('show')
    </script>
</g:if>
<!-- /Header -->

<!-- Main -->
<div>
    <p>
    </p>
</div>

<div class="container">

    <!-- upper section -->
    <div class="row">
        <div class="col-sm-3">
            <!-- left -->
            %{--<div class="pic">
                <a href="#"><img width="75%" src="${createLink(controller: 'home',action: 'dispPic',id: session.user.id)}"></a>
                <div class="text">
                    <a  name= "${session.user.id}" data-toggle="modal" data-target="#picEdit"><h5><i class="glyphicon glyphicon-pencil"></i> Change image</h5></a>
                </div></div>--}%
            <h3 class="centered">${session.user.firstName} ${session.user.lastName}</h3>
            <h3><i class="glyphicon glyphicon-user"></i>Friends</h3>
            <hr>

            <ul class="nav nav-stacked">
                <g:render template="friends" collection="${friends}" var="friends"/>
                %{--<li><g:link controller="admin" action="viewClasses"><i class="fa fa-fw fa-list"></i>View Classes</g:link></li>--}%
                %{--<li><g:link controller="admin" action="viewTeachers"><i class="fa fa-fw fa-list"></i>View Teacher</g:link></li>--}%
                %{--<li><g:link controller="admin" action="viewClasses"><i class="fa fa-fw fa-list"></i>View User</g:link></li>--}%
                %{--<li><g:link controller="admin" action="unassigned Students"><i class="fa fa-fw fa-list"></i>Unassigned Student</g:link></li>--}%
                %{--<li><g:link action="announce"><i class="glyphicon glyphicon-flash"></i> Announce</g:link></li>--}%
                %{--<li><g:link action="studentmsg"><i class="glyphicon glyphicon-flash"></i> Student Announce</g:link></li>--}%
                %{--<li><i class="fa fa-fw fa-list"></i>Upload Resources</li>--}%
                %{--<li><a data-toggle="modal" href="#docResource"><i class="fa fa-fw fa-list"></i>Document Resources</a></li>--}%
                %{--<li><a data-toggle="modal" href="#linkResource"><i class="fa fa-fw fa-list"></i>Link Resources</a></li>--}%
                <!--<li><a data-toggle="modal" href="#myModal"><i class="glyphicon glyphicon-link"></i> Links</a></li>-->
                %{--<li><g:link controller="home" action="Resource"><i class="glyphicon glyphicon-list-alt"></i> Resources</g:link></li>--}%
                %{--<li><a data-toggle="modal" href="#myModal"><i class="glyphicon glyphicon-list-alt"></i> Results</a></li>--}%
                %{--<li><a data-toggle="modal" href="#myModal"><i class="glyphicon glyphicon-bell"></i> Notifications</a></li>--}%
                %{--<li><a ><i class="glyphicon glyphicon-time"></i> Calender</a></li>--}%
                %{--<li><a><i class="glyphicon glyphicon-plus"></i> Upload notices</a></li>--}%
                %{--<li><g:link action="contentManage"><i class="glyphicon glyphicon-flash"></i>Content Management</g:link></li>--}%

                <hr>

            </ul>
            <div class="btn-group btn-group-justified">

                </div>
        </div><!-- /span-3 -->

        <div class="col-sm-9">

            <!-- column 2 -->
            %{--<h3><i class="glyphicon glyphicon-dashboard"></i> Dashboard</h3>--}%

            <hr>

            <div class="row">
                <!-- center left-->
                <div class="col-md-7">
                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <center style="width: 100%">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-default col-lg-4">Total: ${session.user.moneyOwed - session.user.moneyDue}</button>
                            <button type="button" class="btn btn-default col-lg-4">Owed: ${session.user.moneyOwed}</button>
                            <button type="button" class="btn btn-default col-lg-4">Due: ${session.user.moneyDue}</button>
                        </div>
                            </center>
                        </div>

                        <div class="panel-body">
                            <div class="list-group">
                                <g:render template="bills" collection="${bills}" var="bills"/>
                                %{--<span class="list-group-item"><g:link controller="admin" action="addTeacher"><i class="fa fa-fw fa-plus"></i>Teacher</g:link></span>
                                <span class="list-group-item"><g:link controller="admin" action="addClass"><i class="fa fa-fw fa-plus"></i>Class</g:link></span>
                                <span class="list-group-item"><g:link controller="admin" action="addGuardian"><i class="fa fa-fw fa-plus"></i>Guardian</g:link></span>
                                <span class="list-group-item"><g:link controller="admin" action="addStudent"><i class="fa fa-fw fa-plus"></i>Student</g:link></span>--}%

                                <p></p>
                                <g:link action="approval" class="btn btn-primary" >See all pending requests</g:link>
                            </div>
                        </div>
                    </div>

                </div><!--/col-->

            <!--center-right-->
                <div class="col-md-5">

                    <ul class="nav nav-justified">
                        <li> <a href="#"><i class="glyphicon glyphicon-cog"></i></a></li>
                        <!--<li><a href="#"><i class="glyphicon glyphicon-heart"></i></a></li>-->
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-comment"></i><span class="count">3</span></a><ul class="dropdown-menu" role="menu"><li><a href="#">1. Is there a way..</a></li><li><a href="#">2. Hello, admin. I would..</a></li><li><a href="#"><strong>All messages</strong></a></li></ul></li>
                        <li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
                        <li><a title="Add Widget" data-toggle="modal" href="#myModal"><span class="glyphicon glyphicon-plus-sign"></span></a></li>
                    </ul>

                    %{--<hr>--}%

                    %{--<div >--}%
                        %{--<iframe src="https://www.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=rsconvent123%40gmail.com&amp;color=%231B887A&amp;ctz=Asia%2FCalcutta" style=" border-width:0 " width="100%" height="200 px" frameborder="0" scrolling="no"></iframe>--}%
                    %{--</div>--}%
                    %{--<hr>--}%
                    <hr>
                <div class="btn-group btn-group-justified">
                        <!--<a href="#" class="btn btn-info col-sm-3">
                    <i class="glyphicon glyphicon-plus"></i><br>
                    Service
                  </a>

                  <a href="#" class="btn btn-info col-sm-3">
                    <i class="glyphicon glyphicon-cog"></i><br>
                    Tools
                  </a>-->
                        <g:link controller="user" action="addBill" class="btn btn-info col-sm-3"><i class="glyphicon glyphicon-plus"></i>Add Bill</g:link>
                        <g:link controller="user" action="createGroup" class="btn btn-info col-sm-3"><i class="glyphicon glyphicon-plus"></i>Create Group</g:link>

                    </div>

                <div class="container">
                    <div class="row">
                        <br><br>
                    </div>
                    <div class="row">
                        <div class="col-md-4 ">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4><i class="fa fa-fw fa-plus"></i> Add Friend</h4>
                                </div>
                                <div class="panel-body">
                                    <g:form action="addFriend">
                                        <input class="form-control" type="email" name="email" placeholder="Enter your friends email"/><br>

                                        <input class="btn btn-primary" type="submit" value="Add"/>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div><!--/col-span-6-->

            </div><!--/row-->
        </div><!--/col-span-9-->

    </div><!--/row-->
<!-- /upper section -->

<!-- lower section -->
    <div class="row">

        <div class="col-md-12">
            <hr>
            <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert">×</button>
                Please remember to <a href="#">Logout</a> for classified security.
            </div>
            <div class="col-md-4">
                <hr>
            </div>

            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">Title</h4>
                        </div>
                        <div class="modal-body">
                            <p>for adding modal</p>
                        </div>
                        <div class="modal-footer">

                            <a href="#" class="btn btn-primary">Save changes</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal" id="myModal1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">Content management</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <ul class="nav nav-tabs" id="myTab">
                                    <li class="active"><a href="#slider-images" data-toggle="tab">Slider images</a></li>
                                    <li><a href="#content" data-toggle="tab">Content</a></li>

                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="slider-images">
                                        <h4><i class="glyphicon glyphicon-list"></i></h4>
                                        <p>Change the images</p>
                                        1<br>
                                        2<br>
                                        3
                                    </div>
                                    <div class="tab-pane" id="content">
                                        <h4><i class="glyphicon glyphicon-list"></i></h4>

                                        <p>
                                            change the content
                                        </p>
                                    </div>

                                </div>
                            </div>
                            <!--/tabs-->

                        </div>
                        <div class="modal-footer">

                            <a href="#" class="btn btn-primary">Save changes</a>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dalog -->
            </div><!-- /.modal -->




        <!-- script references -->
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <!--<script src="ajax.js"></script>-->

        </div>
    </div>
</div>
</body>
</html>