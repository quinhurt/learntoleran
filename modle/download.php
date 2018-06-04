<?php
include "db.php";





$conn = DBconnect();
$sql = "SELECT file from assigment WHERE assigmentID=" .$_GET['assigmentID'];
$stmt = $conn->prepare($sql);
$stmt->execute();
  while ($row = $stmt->fetch())
  {
   $file = $row['file'];
  }






 $filename=$_GET['fname'];
 $ctype=$_GET['ctype'];
 $size=$_GET['size'];
 /* echo $filename;
 echo $ctype;
 echo $size; */
 $tmp = explode(".",$filename);
 switch ($tmp[count($tmp)-1])
 {
   case "pdf": $ctype="application/pdf"; break;
   case "exe": $ctype="application/octet-stream"; break;
   case "zip": $ctype="application/zip"; break;
   case "docx":
   case "doc": $ctype="application/msword"; break;
   case "csv":
   case "xls":
   case "xlsx": $ctype="application/vnd.ms-excel"; break;
   case "ppt": $ctype="application/vnd.ms-powerpoint"; break;
   case "gif": $ctype="image/gif"; break;
   case "png": $ctype="image/png"; break;
   case "jpeg":
   case "jpg": $ctype="image/jpg"; break;
   case "tif":
   case "tiff": $ctype="image/tiff"; break;
   case "psd": $ctype="image/psd"; break;
   case "bmp": $ctype="image/bmp"; break;
   case "ico": $ctype="image/vnd.microsoft.icon"; break;
   default: $ctype="application/force-download";
 }

 $path=$filename;

 header("Pragma: public"); // required
 header("Expires: 0");
 header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
 header("Cache-Control: private",false); // required for certain browsers
 header("Content-Type: $ctype");
 header("Content-Disposition: attachment; filename=\"$path\"");
 header("Content-Transfer-Encoding: binary");
 header("Content-Length: ".$size);
 echo $path;
 ob_clean();
 flush();
 readfile($path)
 ?>
