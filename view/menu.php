

<div class="loginmenu">

<nav>
<a href="#">login</a>
<a href="#">signup</a>
<a href="#">about</a>
</nav>


<div class="ui form large" id="login_form">
   <form action="modle\loginprocess.php" method="POST">
           <input type="text" name="username" id="cust_login_email" placeholder="user name">
           <input type="password" name="pasword" id="cust_login_password" placeholder="Password">

           <button type="submit" >
               Login
                </button>

       <div id="loginvalidity" class="ui error message"></div>
   </form>
</div>

<?php

$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();


 ?>

<form action="modle\signup_process.php"  method="post">
  <input class="valid" id="name" type="text" required placeholder="first name" name="name" >
<input class="valid" id="lname" type="text"required placeholder="last name" name="lname" >
<input type="text"  id="DOB" name="DOB" required placeholder="date of birth">
<select name="class" style="width: 200px">
            <?php
            while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                echo '<option value="' . $row_class['ClassID'] . '" ';

                echo '>' . $row_class['className'] . '</option>';
            }
            ?>

  </select>

<input class="valid" id="username" type="text"required placeholder="username" name="username" >
<input class="valid" id="password" type="text"required placeholder="password" name="password" id="pasword">
  <input type="submit" name="submit"  onclick="student">
</form>


</div>
