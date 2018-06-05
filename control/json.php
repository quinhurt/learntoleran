<?php
header('Content-Type: application/json');
include '../modle/session.php';

if(isset($_SESSION['userid'])) {
    if($_SESSION['userClassID'] == '2') {
        $res = getclass($_SESSION['userClassID']);
        echo json_encode($res);
        exit();
    }




    if($_GET['calllist'] == 'classlist') {
        $data = Array('class'=>$_SESSION['userClassID'],
        $res =  classlist($data);
        echo json_encode(Array('classlist'=>(int)$res));
        exit();
    }


 ?>
