<?php

$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();

 ?>
<legend>NEW TEACHER</legend>
<form action="modle/newtecher_process.php"  method="post">
  <input  class="form-control"  type="text" required placeholder="first name" name="name" >
<input  class="form-control"  type="text"required placeholder="last name" name="lname" >
<input  class="form-control"   name="dob" required placeholder="date of birth">
<input  class="form-control"  type="text"required placeholder="username" name="username" >
<select  class="form-control"  name="class" style="width: 200px">
            <?php
            while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                echo '<option value="' . $row_class['ClassID'] . '" ';

                echo '>' . $row_class['className'] . '</option>';
            }
            ?>
  </select>
<input class="form-control" type="text"required placeholder="password" name="password" id="pasword">
  <input type="submit" name="submit"  onclick="student()">
</form>




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
