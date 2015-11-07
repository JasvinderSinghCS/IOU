
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sharing is good</title>
    %{-- High slide--}%
    <script type="text/javascript" src="${resource(dir: 'highslide',file: 'highslide.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'highslide',file: 'highslide.css')}" />
    <!-- jQuery -->
    <script src="${resource(dir: 'js',file: 'jquery.js')}"></script>
    <!-- Contact Form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <%--<script src="${resource(dir: 'js',file: 'jqBootstrapValidation.js')}"></script>--%>
    <script src="${resource(dir: 'js',file: 'contact_me.js')}"></script>


    <!-- Bootstrap Core JavaScript -->
    <script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>

    %{--Image Enlargement--}%
    <script type="text/javascript">
        //<![CDATA[
        hs.registerOverlay({
            html: '<div class="closebutton" onclick="return hs.close(this)" title="Close"></div>',
            position: 'top right',
            fade: 2 // fading the semi-transparent overlay looks bad in IE
        });


        hs.graphicsDir = '${resource(dir: 'highslide',file: 'graphics')}';
        hs.wrapperClassName = 'borderless';
        //]]>
    </script>

    %{--image enlargement closed--}%
    %{--high slide closed--}%

    <!-- Bootstrap Core CSS -->

    <link href="${resource(dir: 'css',file: 'bootstrap.css')}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir: 'css', file: 'modern-business.css')}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir: 'font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $('.carousel').carousel({
            interval: 3000 //changes the speed
        })
    </script>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link class="navbar-brand" controller="User" action="index">IOU</g:link>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <g:if test="${session.user}">
                    <li>
                        <g:link controller="user" action="home"><i class="fa fa-fw fa-user"></i>Dashboard</g:link>
                    </li>
                </g:if>
            <!--<li>
          <a href="about.html">About</a>
        </li>
        <li>
          <a href="services.html">Vice Chancellor</a>
        </li>
        <li>
          <a href="contact.html">Contact</a>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Courses <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li>
              <a href="portfolio-1-col.html">B.Tech</a>
            </li>
            <li>
              <a href="portfolio-2-col.html">M.Tech</a>
            </li>
            <li>
              <a href="portfolio-3-col.html">MCA(SE)</a>
            </li>
            <li>
              <a href="portfolio-4-col.html">MBA</a>
            </li>
            <li>
              <a href="portfolio-item.html">LLB</a>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Student Portal <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li>
              <a href="blog-home-1.html">Results</a>
            </li>
            <li>
              <a href="blog-home-2.html">Datesheet</a>
            </li>
            <li>
              <a href="blog-post.html">Notices</a>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li>
              <a href="full-width.html">Full Width Page</a>
            </li>
            <li>
              <a href="sidebar.html">Sidebar Page</a>
            </li>
            <li>
              <a href="faq.html">FAQ</a>
            </li>
            <li>
              <a href="404.html">404</a>
            </li>
            <li>
              <a href="pricing.html">Pricing Table</a>
            </li>
          </ul>
        </li>-->
                <g:if test="${session.user}">
                    <li>
                        <g:link controller="user" action="logout"><i class="fa fa-fw fa-user"></i>Logout</g:link>
                    </li>
                </g:if>
                <g:if test="${!session.user}">
                    <li>
                        <g:link controller="user" action="register"><i class="fa fa-fw fa-lock"></i>Register</g:link>
                    </li>
                    <li>
                        <g:link controller="user" action="login"><i class="fa fa-fw fa-key"></i>Login</g:link>
                    </li>
                </g:if>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<g:layoutBody/>

</body>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy;IOU</p>
            </div>
        </div>
    </div>
</footer>
<script>
    $('.carousel').carousel({
        interval: 3000 //changes the speed
    })
</script>
</html>