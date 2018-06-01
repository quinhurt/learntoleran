
   <nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
     <a class="navbar-brand" href="#">Navbar w/ text</a>

     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
     <div   class="collapse navbar-collapse bg-dark" id="navbarNav">
     <ul class="nav nav-pills " id="pills-tab" role="tablist">
       <li class="nav-item">
         <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-class" role="tab" aria-controls="pills-home" aria-selected="true">new class</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-teacher" role="tab" aria-controls="pills-profile" aria-selected="false">New Teacher</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-people" role="tab" aria-controls="pills-contact" aria-selected="false">people</a>
       </li>
     </ul>


     <a href="modle/logout.php" class="logout" >Logout</a>


     </div>
   </nav>



   <div class="tab-content" id="pills-tabContent">
     <div class="tab-pane fade show active" id="pills-class" role="tabpanel" aria-labelledby="pills-home-tab"><?php   include "html/newclass.php"?></div>
     <div class="tab-pane fade" id="pills-teacher" role="tabpanel" aria-labelledby="pills-profile-tab"> <?php include "html/newteacher.php" ?></div>
     <div class="tab-pane fade" id="pills-people" role="tabpanel" aria-labelledby="pills-contact-tab"><?php include "html/people.php"?></div>
   </div>
