<nav>
  <a href="modle/logout.php"  class="logout"> Logout</a>

  <button class="btn btn-primary" >update useres </button>
  <button class="btn btn-primary">new class  </button>
  <button  class="btn btn-primary" > new teacher</button>
  <button class="btn btn-primary" >new lesson</button>
  <button class="btn btn-primary" >new assigment</button>
  <button  class="btn btn-primary" > submited assigment</button>
  <button  class="btn btn-primary" > lessons</button>
  <button class="btn btn-primary" >update</button>
<button  class="btn btn-primary">lessons </button>
 <button class="btn btn-primary"> new assigments</button>
  <button class="btn btn-primary"> new admin</button>
</nav>

<?php




$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();




 ?>

<nav>
<form  class="right" method="post">
  <select class="form-control" name="class" style="width: 200px">
              <?php
              while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                  echo '<option value="' . $row_class['ClassID'] . '" ';

                  echo '>' . $row_class['className'] . '</option>';
              }
              ?>
    </select>
<input type="submit" name="submit" >
</form>

</nav>

<?php
include "html/update.php"
 ?>


     <?php
     include "html/viewlesson.php"
      ?>

     <?php
     include "html/new.php"
      ?>

      <?php
      include 'html/newlesson.php';
      ?>

      <?php
      include 'html/newassigment.php';
      ?>

      <?php
      include "html/newclass.php";

       ?>

       <?php

      include "html/newteacher.php";
        ?>


        <?php

      include "html/people.php";
         ?>

         <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar -nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
  </div>
</nav>
