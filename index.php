
<?php
  //  session_start(); if ($_SESSION['roll'] == ) {
    //      Header('location: index.php' }

include "view/header.php";
include "modle/DB.php";
include "modle/session.php";

 ?>

 <?php
 switch($_SESSION['roll']) {
   case '1':
         include 'view/adminnav.php';
     break;
 case '2':
         include 'view/studentnav.php';
     break;
 case '3':
         include 'view/teachernav.php';
    break;
default:
    include 'view/menu.php';
 break;
  }
  ?>
  <!-- Button trigger modal -->

<?php
include "view/footer.php";
 ?>
