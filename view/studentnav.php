<nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar w/ text</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse bg-dark" id="navbarNav">
  <ul class="nav nav-pills " id="pills-tab" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">update</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">lesson</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">assngemnt</a>
    </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-dropbox-tab" data-toggle="pill" href="#pills-dropbox" role="tab" aria-controls="pills-dropbox" aria-selected="false">dropbox</a>
  </li>
</ul>


  <a href="modle/logout.php" class="logout" >Logout</a>


  </div>
</nav>



<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab"><?php     ?></div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab"> <?php include "html/viewlesson.php"  ?></div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab"><?php include "html/new.php" ?></div>
  <div class="tab-pane fade" id="pills-dropbox" role="tabpanel" aria-labelledby="pills-dropbox-tab"><?php  include "html/submit.php" ?></div>
</div>


<?php

//echo "$_SESSION";
 ?>
