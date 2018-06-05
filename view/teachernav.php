

<nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar w/ text</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse bg-dark" id="navbarNav">
  <ul class="nav nav-pills " id="pills-tab" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-lesson" role="tab" aria-controls="pills-home" aria-selected="true">New lesson</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-assignment" role="tab" aria-controls="pills-profile" aria-selected="false">new assignmenrt</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-new" role="tab" aria-controls="pills-contact" aria-selected="false">lesson</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-view" role="tab" aria-controls="pills-contact" aria-selected="false">assngemnt</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="pills-drop-tab" data-toggle="pill" href="#pills-drop" role="tab" aria-controls="pills-drop" aria-selected="false">dropbox</a>
    </li>
    <a class="nav-link" id="pills-class-tab" data-toggle="pill" href="#pills-class" role="tab" aria-controls="pills-class" aria-selected="false">class list</a>
  </li>
  </ul>


  <a href="modle/logout.php" class="logout" >Logout</a>
  </div>
</nav>



<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show activ" id="pills-lesson" role="tabpanel" aria-labelledby="pills-home-tab"><?php   include 'html/newlesson.php' ?></div>
  <div class="tab-pane fade" id="pills-assignment" role="tabpanel" aria-labelledby="pills-profile-tab"> <?php include 'html/newassigment.php'  ?></div>
  <div class="tab-pane fade" id="pills-new" role="tabpanel" aria-labelledby="pills-contact-tab"><?php  include "html/viewlesson.php"; ?></div>
  <div class="tab-pane fade" id="pills-view" role="tabpanel" aria-labelledby="pills-contact-tab"><?php  include "html/new.php" ?></div>
  <div class="tab-pane fade" id="pills-drop" role="tabpanel" aria-labelledby="pills-drop-tab"><?php  include "html/dropbox.php" ?></div>
  <div class="tab-pane fade" id="pills-class" role="tabpanel" aria-labelledby="pills-class-tab"><?php  include "html/classlist.php" ?></div>
</div>


<?php
//echo $_SESSION['lesson'];
 ?>
