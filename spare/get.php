<?php
/*if(isset($_SESSION['roll'])) {
    if($_GET['getData'] == 'listqueue') {
        $res = getQueue($_SESSION['cohort_ID']);
        echo json_encode($res);
        exit();
    }     */


    if($_GET['getData'] == 'newclass') {
      $data = Array('classID'=>$_['classID'],
                      'class'=>$_POST['newclasss']);
      $res = class($data);
      echo json_encode(Array('classID'=>(int)$res));
      exit();
  }

  //}


  ?>
