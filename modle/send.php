<?php
include '../view/header.php';

switch($_SESSION['roll']) {
  case '1':
        include '../view/adminnav.php';
    break;
case '2':
        include '../view/about.php';
    break;
//case '3'
  //      include '';
  //  break;
}
 include "../view/footer.php" 
 ?>
