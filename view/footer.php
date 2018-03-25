<?php


$conn = dbConnect();
$contentquery = "SELECT userID,name,surname,DOB,pasword FROM user
WHERE userID =".$_SESSION['userid'];
    $stmt = $conn->prepare($contentquery);
  $stmt->execute();
   while ($row = $stmt->fetch())
  {
      $name = $row['name'];
      $surname = $row['surname'];
      $DOB = $row['DOB'];
      $pasword  =$row['pasword'];
    }

 ?>



<div class="line">

</div>
<section>
  made by quinlan web porduction
  <?php
    echo ' USER TYPE: ' ;
  echo "$name";
  echo " ";
  echo "$surname";


  ?>

</section>
</body>
</html>
