

<div class="loginmenu">

<nav>
 <button class="btn btn-primary"  id="myBtn">sign up</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".signup">about</button>
</nav>


<div class="ui form large">
  <div class="login">


   <form action="modle/loginprocess.php" method="POST">
           <input class="form-control"  type="text" name="username"  placeholder="user name" >
           <br>
           <input  class="form-control"  type="password" name="pasword"  placeholder="Password">
            <br>
           <button type="submit" class="btn btn-primary" onclick="classlist">
               Login
            </button>


   </form>
  </div>

<div class="modal fade signup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">

    <div class="modal-content">
<?php
include "html/about.php";
?>
</div>
    </div>


<?php

$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();


 ?>



<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <form action="modle/signup_process.php"  method="post">
      <input class="form-control" id="name" type="text" required placeholder="first name" name="name" class="" pattern="[A-Za-z]{3,20}" >
    <input class="form-control" id="lname" type="text"required placeholder="last name" name="lname" pattern="[A-Za-z]{3,20}" >
    <input  class="form-control "  id="datepicker" type="text"  name="DOB" required placeholder="date of birth">

    <select class="form-control" name="class" style="width: 200px">
                <?php
                while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                    echo '<option value="' . $row_class['ClassID'] . '" ';

                    echo '>' . $row_class['className'] . '</option>';
                }
                ?>
      </select>


    <input class="form-control" id="username" type="text"required placeholder="username" name="username" pattern="[A-Za-z0.9]{3,20}" >
    <input class="form-control" id="password" type="password"required placeholder="password" name="password" pattern="[A-Za-z0-9]{3,20}" >
      <input type="submit" name="submit"  onclick="student">
    </form>
  </div>

</div>




<script>
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4';
        format: yyyy-mm-dd;

    });
</script>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
 modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
 modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}
</script>


</div>


</div>
