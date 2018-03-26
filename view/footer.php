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


$query = "SELECT ID, session_ID,URL,IP,DATESTAMP FROM logs";
$stmt = $conn->prepare($query);
$stmt->execute();
while ($row = $stmt->fetch())
{
  $ID = $row['ID'];
  $session_ID = $row['session_ID'];
  $URL = $row['URL'];
  $DATESTAMP  =$row['DATESTAMP'];
}

 ?>



<div class="line">

</div>



<section>
  made by quinlan web porduction
  <br>
  <?php
    echo "$_SESSION[error]";
    echo "$_SESSION[login]";

    UNSET($_SESSION['error']);
      UNSET($_SESSION['login']);

   ?>
  <br>
  <?php
    echo 'USER NAME: ' ;
  echo "$name";
  echo " ";
  echo "$surname";
  ?>
<br>
  <?php
  echo "session  =";
  echo "$session_ID "; ?>
  <br>
  <?php
  echo " URL  ";
  echo "$URL";
?>
<br>
<?php
//print_r($_SESSION)
?>


</section>
</body>
</html>
