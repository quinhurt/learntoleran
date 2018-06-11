  <?php

      session_start();




    //LOG activities
        $log_sql = "INSERT INTO  logs (session_ID, URL, IP)
          VALUES ('" . session_id() . "', '" .$_SERVER['REQUEST_URI'] . "',  '" . $_SERVER['HTTP_HOST'] . "');";
          $conn = DBConnect();
          $stmt = $conn->prepare($log_sql);
          $stmt->execute();

    // Set user to anonymous if not already
        if(!isset($_SESSION['roll'])) {
            $_SESSION['roll'] = 0;
        }

        if(!isset($_SESSION['active'])) {
            $_SESSION['active'] = 0;
        }


        if(!isset($_SESSION['error'])) {
            $_SESSION['error'] = 0;
        }




  ?>
