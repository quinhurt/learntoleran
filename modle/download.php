
  <?php
  include "db.php";


    $conn = DBconnect();
    $sql = "SELECT * from assigment WHERE assigmentID=" .$_GET['assigmentID'];
    $stmt = $conn->prepare($sql);
    $stmt->execute();
      while ($row = $stmt->fetch())
      {
       $file = $row['file'];
       $filename = $row['filename'];


       $filePath =  $file;
       if(!empty($filename) && file_exists($filePath)){

           header("Cache-Control: public");
           header("Content-Description: File Transfer");
           header("Content-Disposition: attachment; filename=$filename");
           header("Content-Type: application/zip");
           header("Content-Type: application/doc");
           header("Content-Type: application/docx");
           header("Content-Transfer-Encoding: binary");

           // Read the file
           readfile($filePath);
           exit;
       }else{
           echo 'The file does not exist.';
       }

      }


     ?>
