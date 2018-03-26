<?php
include '../view/header2.php';




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
}
 include "../view/footer.php"
 ?>
