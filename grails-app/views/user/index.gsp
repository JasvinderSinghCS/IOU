

<!DOCTYPE html>
<html lang="en">

<head>

  <meta name="layout" content="iou"/>
</head>

<body>

<!-- Navigation -->

<!-- Header Carousel -->
<header id="myCarousel" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <div class="fill" style="background-image:url('${resource(dir: 'images',file: 'slide1.jpg')}');"></div>
      <div class="carousel-caption">
        <h2>loan</h2>
      </div>
    </div>
    <div class="item">
      <div class="fill" style="background-image:url('${resource(dir: 'images',file: 'slide2.jpg')}');"></div>
      <div class="carousel-caption">
        <h2>divide</h2>
      </div>
    </div>
    <div class="item">
      <div class="fill" style="background-image:url('${resource(dir: 'images',file: 'slide3.jpg')}');"></div>
      <div class="carousel-caption">
        <h2> share</h2>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="icon-next"></span>
  </a>
</header>

<!-- Page Content -->
<div class="container">

  <!-- Marketing Icons Section -->
  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header">
     Share the money
      </h1>
    </div>
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><i class="fa fa-fw fa-trophy"></i>Faculty </h4>
        </div>
        <div class="panel-body">
          <p>GGSIPU faculty is composed of men and women who are world-class scholars. Faculty members are passionate and curious individuals who continue their own research while teaching at GGSIPU. They come from across the country and all over the world, bringing with them a diverse wealth of knowledge.</p>
          <a href="#" class="btn btn-default"> More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><i class="fa fa-fw fa-building"></i> Infrastrcture</h4>

        </div>
        <div class="panel-body">
          <p>University Schools have state of the art infrastructure for fulfilling the needs of the students to keep par with the best institutions in India . The advanced computer lab providing 1:1 computer to student ratio is well equipped with latest softwares that complement the varying  .. </p>
          <a href="#" class="btn btn-default"> More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><i class="fa fa-fw fa-graduation-cap"></i> Placements</h4>
        </div>
        <div class="panel-body">
          <p>Placements are benchmark to the performance of any engineering and management institutes and it depicts success and the growth of the institution. We at Amruta Institute of Engineering and Management Science are proud of our achievements in this field.The Placement Cell of GGSIPU plays a.. </p>
          <a href="#" class="btn btn-default"> More</a>
        </div>
      </div>
    </div>
  </div>
  <!-- /.row -->

  <!-- Portfolio Section -->
  <div class="row">
    <div class="col-lg-12">
      <h2 class="page-header">Photo Gallery</h2>
    </div>
    <div class="col-md-4 col-sm-6">
      <a href="${resource(dir: 'images/gallery/convocation', file: '1.jpg')}" class="highslide" onclick="return hs.expand(this)">
        <img src="${resource(dir: 'images/gallery/convocation', file: '1.jpg')}"
             title="Click to enlarge" class="img-responsive img-portfolio img-hover" alt=""/>
      </a>

    </div>
    <div class="col-md-4 col-sm-6">
      <a href="${resource(dir: 'images/gallery/convocation', file: '2.JPG')}" class="highslide" onclick="return hs.expand(this)">
        <img src="${resource(dir: 'images/gallery/convocation', file: '2.JPG')}"
             title="Click to enlarge" class="img-responsive img-portfolio img-hover" alt=""/>
      </a>
    </div>
    <div class="col-md-4 col-sm-6">
      <a href="${resource(dir: 'images/gallery/convocation', file: '3.JPG')}" class="highslide" onclick="return hs.expand(this)">
        <img src="${resource(dir: 'images/gallery/convocation', file: '3.JPG')}"
             title="Click to enlarge" class="img-responsive img-portfolio img-hover" alt=""/>
      </a>
    </div>
    <div class="col-md-4 col-sm-6">
      <a href="${resource(dir: 'images/gallery/sports', file: '1.JPG')}" class="highslide" onclick="return hs.expand(this)">
        <img src="${resource(dir: 'images/gallery/sports', file: '1.JPG')}"
             title="Click to enlarge" class="img-responsive img-portfolio img-hover" alt=""/>
      </a>
    </div>
    <div class="col-md-4 col-sm-6">
      <a href="${resource(dir: 'images/gallery/sports', file: '2.JPG')}" class="highslide" onclick="return hs.expand(this)">
        <img src="${resource(dir: 'images/gallery/sports', file: '2.JPG')}"
             title="Click to enlarge" class="img-responsive img-portfolio img-hover" alt=""/>
      </a>
    </div>
    <div class="col-md-4 col-sm-6">
      <a href="${resource(dir: 'images/gallery/sports', file: '3.JPG')}" class="highslide" onclick="return hs.expand(this)">
        <img src="${resource(dir: 'images/gallery/sports', file: '3.JPG')}"
             title="Click to enlarge" class="img-responsive img-portfolio img-hover" alt=""/>
      </a>
    </div>

  </div>
  <!-- /.row -->

  <!-- Features Section -->
  <div class="row">
    <div class="col-lg-12">
      <h2 class="page-header"> Notices / Circulars</h2>
    </div>
    <div class="col-md-6">
      <p>Totices Goes here:</p>
      <ul>
        <li><strong>Event 1</strong>
        </li>
        <li>Activity 1</li>
        <li>Notice for addmission</li>
        <li>Link for results </li>
        <li>Other Links</li>
      </ul>
      <p>Other relevant text</p>
    </div>
    <div class="col-md-6">
      <img class="img-responsive" src="${resource(dir: 'images/gallery/sports',file: '5.JPG')}" alt="">
    </div>
  </div>
  <!-- /.row -->

  <hr>

  <!-- Call to Action Section -->
  <div class="well">
    <div class="row">
      <div class="col-md-8">
        <p>For admission details and any other enquiry feel free to get in touch</p>
      </div>
      <div class="col-md-4">
        <g:link controller="home" action="showContactPage" class="btn btn-lg btn-default btn-block"  >

          Contact Now
        </g:link>
      </div>
    </div>
  </div>

  <hr>



</div>
<!-- /.container -->

%{--<!-- jQuery -->
<script src="${resource(dir: 'js',file: 'jquery.js')}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>--}%

<!-- Script to Activate the Carousel -->


</body>

</html>