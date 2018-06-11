
<div class="sorry">
  <h2>new assignment</h2>

    <?php


      $conn = dbConnect();
        $contentquery =  "SELECT * FROM assigment
        WHERE classID =".$_SESSION['userClassID'];


        $stmt = $conn->prepare($contentquery);
        $stmt->execute();
          while ($row = $stmt->fetch()){

            $assgment = $row['assigmentID'];
            $content = $row['content'];
            $file = $row['file'];

            echo "$content";
            echo "$assgment";
            ?> <a  href="modle/download.php?assigmentID=<?php echo $row['assigmentID'] ?>"  > <?php echo $content ?></a> <?php
          }
        ?>
</div>
