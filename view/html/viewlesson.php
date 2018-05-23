<article>

  <h2>lessons</h2>
    <?php

      $conn = dbConnect();
        $contentquery = "SELECT * FROM  lesson
        WHERE classID =".$_SESSION['userClassID'];
        $stmt = $conn->prepare($contentquery);
        $stmt->execute();
          while ($row = $stmt->fetch())
          {
          ?>  <div class="left"> <?php
             $lessonNAME = $row['lessonNAME'];
             $LessonID = $row['LessonID'];

             	echo ' <a  onclick="getlesson(' . $LessonID . ')">' . $lessonNAME . '</a>';
           ?>

          </div>
          <?php
            }
          ?>
<?php
$conn = dbConnect();
  $query = "SELECT * FROM  lesson
  WHERE LessonID =".$_SESSION['lessonID'];
  $stmt = $conn->prepare($query);
  $stmt->execute();
    while ($row = $stmt->fetch())
    {

       $tutorial = $row['tutorial'];
 echo "$tutorial";
}

     ?>


      <div id="someidinyourDOM"></div>
</article>
