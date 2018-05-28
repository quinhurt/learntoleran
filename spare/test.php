
<br />
<b>Fatal error</b>:  Uncaught PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column 'undefined' in 'where clause' in C:\xampp\htdocs\learntoleran\modle\viewlesson_p.php:10
Stack trace:
#0 C:\xampp\htdocs\learntoleran\modle\viewlesson_p.php(10): PDOStatement-&gt;execute()
#1 {main}
  thrown in <b>C:\xampp\htdocs\learntoleran\modle\viewlesson_p.php</b> on line <b>10</b><br />


<?php

if(isset($_POST["submit"])){
    $check = getimagesize($_FILES["file"]["tmp_name"]);
    if($check !== false){
        $file = $_FILES['file']['tmp_name'];
        $fileContent = addslashes(file_get_contents($file));
      }
}

 ?>


 function change(){
   if(document.getElementById('update').style.display=='none')
   {
     document.getElementById('update').style.display = 'block';
   }
   else {

       document.getElementById('update').style.display = 'none';
     }
   }
   function change1(){
     if(document.getElementById('viewlesson').style.display=='none')
     {
       document.getElementById('viewlesson').style.display = 'block';
     }
     else {

         document.getElementById('viewlesson').style.display = 'none';
       }
     }

     function change2(){
       if(document.getElementById('new').style.display=='none')
       {
         document.getElementById('new').style.display = 'block';
       }
       else {

           document.getElementById('new').style.display = 'none';
         }
   }
