<?php
include "db.php";
include "session.php";


?>

<?php
if(isset($_POST["submit"])){
    $check = basename($_FILES["assignment"]["tmp_name"]);
    if($check !== false){
        $assignment = $_FILES['assignment']['tmp_name'];
        $fileContent = addslashes(file_get_contents($assignment));



        $conn = dbConnect();
        $sql = "INSERT INTO dropbox
          VALUES (dropboxID, '".$_POST['conntent']."' , '$fileContent' , null  );";
         $stmt = $conn->prepare($sql);
         $stmt->execute();



echo "New record created successfully";
header('Location: ../index.php?');
}
}

 ?>
