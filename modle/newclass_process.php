
<?php
include "db.php";




        $sql = "INSERT INTO class
        VALUES ('ClassID', '".$_POST['newclass']."');";
        $conn = dbConnect();
        $stmt = $conn->prepare($sql);
        $stmt ->execute();
        header ('location: ../index.php');



 ?>
