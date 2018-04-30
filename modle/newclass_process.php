
<?php
include "DB.php";



      function newclass() {

        $sql = "INSERT INTO class
        VALUES ('ClassID', '".$_POST['newclass']."');";
        $conn = dbConnect();
        $stmt = $conn->prepare($sql);
        $stmt ->execute();
        return $conn->lasInsertid();
        header ('location: ../index.php');
      }


 ?>
