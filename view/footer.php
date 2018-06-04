



<?php
$t=time();

echo(date("Y-m-d",$t));
?>


<div class="line">
</div>
<div id="browserCheck">
</div>

<script>
		document.getElementById("browserCheck").innerHTML = "Mobile Browser: " + isMobile() + "\nIt is: " + BrowserCheck() + " Browser";
</script>

<?php
echo $_SESSION['active'];
 ?>


<script>

function detectmob() {
 if(window.innerWidth <= 800 && window.innerHeight <= 600) {
   return true;
 } else {
   return false;
 }
}
</script>

<section>
  <div class="jumbotron">


  <h4>made by quinlan web porduction</h4>
  </div>
  <br>
  <?php
   ?>




</section>
  </div>
</body>
</html>
