

<div class="loginmenu">

<nav>
<a href="#">login</a>
<a href="#">signup</a>
<a href="#">about</a>
</nav>


<div class="ui form large">
   <form action="modle\loginprocess.php" method="POST">
           <input class="form-control"  type="text" name="username"  placeholder="user name">
           <input  class="form-control"  type="password" name="pasword"  placeholder="Password">

           <button type="submit" >
               Login
                </button>


   </form>
</div>

<?php

$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();


 ?>

<form action="modle\signup_process.php"  method="post">
  <input class="form-control"id="name" type="text" required placeholder="first name" name="name" >
<input class="form-control" id="lname" type="text"required placeholder="last name" name="lname" >
<input  class="form-control" type="text"  id="DOB" name="DOB" required placeholder="date of birth">
<select class="form-control" name="class" style="width: 200px">
            <?php
            while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                echo '<option value="' . $row_class['ClassID'] . '" ';

                echo '>' . $row_class['className'] . '</option>';
            }
            ?>
  </select>

<input class="form-control" id="username" type="text"required placeholder="username" name="username" >
<input class="form-control" id="password" type="password"required placeholder="password" name="password" >
  <input type="submit" name="submit"  onclick="student">
</form>


</div>
