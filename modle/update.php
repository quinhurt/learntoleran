<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link id="defult" href="css/main.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <?php
    include "DB.php";
    include "session.php";

    $conn = dbConnect();
    $contentquery = "SELECT userID,Fname,surename,phone,email,DOB,pasword FROM user WHERE userID =".$_SESSION['userid'];
        $stmt = $conn->prepare($contentquery);
      $stmt->execute();
       while ($row = $stmt->fetch())
      {
          $fname = $row['Fname'];
          $surename = $row['surename'];
          $phone = $row['phone'];
          $email  =$row['email'];
          $DOB =$row['DOB'];
          $password  =$row['pasword'];
        }

        echo '<form action="update_process.php" method="post">';
        echo '<input class="valid" type="text" placeholder="first name" name="fname"  value="'.$fname.'" >';
        echo '<input class="valid" type="text" placeholder="last name" name="lname" value="'.$surename.'" >';
        echo '<input class="valid" type="text" placeholder="phone" name="phone" value="'.$phone.'" >';
        echo '<input class="valid" type="text" placeholder="email" name="email" value="'.$email.'">';
        echo '<input class="valid" type="text" placeholder="date of birth" name="DOB" value="'.$DOB.'">';
        echo '<input class="valid" type="text" placeholder="password" name="password" id="pasword" value= "'.$password.'">';
        echo ' <input type="submit" name="submit">
'
    /*




    </form>*/
    ?>
  </body>
</html>
