

<div class="loginmenu">

<nav>
 <button class="btn btn-primary"  id="myBtn">sign up</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".signup">about</button>
</nav>


<div class="ui form large">
  <div class="login">


   <form name="myForm" action="modle/loginprocess.php" method="POST" onsubmit="return validateForm()">
           <input class="form-control"  type="text" name="username"  placeholder="user name"   value="<?php echo $_SESSION['data'];?>">
           <br>
           <input  class="form-control"  type="password" name="pasword"  placeholder="Password">
            <br>
           <button type="submit" class="btn btn-primary" onclick="classlist">
               Login
            </button>


   </form>
  </div>

  <script>
  function validateForm() {
      var x = document.forms["myForm"]["username"].value;
      if (x == "") {
          alert("login must be fill out");
          return false;
      }
  }
  </script>


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
    <input class="form-control" id="date" name="dob" placeholder="MM/DD/YYYY" type="text"/>

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
 <?php
 if(!isset($_SESSION['error'])) {
     $_SESSION['error'] = 0;
 }
  ?>

<div> <?php echo $_SESSION['error']; ?></div>




<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
<!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
	$(document).ready(function(){
		var date_input=$('input[name="dob"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'yyyy-mm-dd',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})
</script>




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
