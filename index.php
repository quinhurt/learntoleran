
<?php

    include "view/header.php";
    include "modle/db.php";
    include "modle/session.php";
     switch($_SESSION["roll"]) {
       case "1":
             include "view/adminnav.php";
         break;
     case "2":
             include "view/studentnav.php";
         break;
     case "3":
             include "view/teachernav.php";
        break;
      case "4":
            include "view/god.php";
        break;
    default:
        include "view\menu.php";
     break;
      }
  ?>


  <div id="svg">
    <?php
      include "view/svg.svg"
     ?>
  </div>


  <?php
    switch($_SESSION['active']) {
      case '2':
     header('Location: view/html/suspened.php');
    default:
     }
   ?>

  <?php
    include "view/footer.php";
 ?>
