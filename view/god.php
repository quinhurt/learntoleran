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

</form>

</nav>



<?php



 ?>

     <?php
     include "update.php"
     ?>

     <?php
     include "viewlesson.php"
      ?>

     <?php
     include "new.php"
      ?>