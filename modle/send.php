<?php
include '../view/header.php';

include "../modle/DB.php";
include "../modle/session.php";


?>


<?php




switch($_SESSION['roll']) {
  case '1':
        include '../view/adminnav.php';
    break;
case '2':
        include '../view/studentnav.php';
    break;
case '3':
        include '../view/teachernav.php';
   break;
   default:
   header ('location: ../index.php');
break;
 }

 include "../view/footer.php";

 ?>
