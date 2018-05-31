<nav>
  <button class="btn btn-primary" id="update2" onclick="change(1)" >update</button>
  <button  class="btn btn-primary" id="viewlesson2" onclick="change(2)" >lessons </button>
  <button class="btn btn-primary" id="new2"  class="logout" onclick="change(3)" > new assigments</button>
  <a href="modle/logout.php" class="logout" > Logout</a>
</nav>


<div class="studentnav" value="1" >
    <?php
    include "html/update.php"
    ?>
</div>
    <br>
<div  class="studentnav" id="viewlesson">
    <?php
    include "html/viewlesson.php"
     ?>
</div>

<div  class="studentnav" >
    <?php
    include "html/new.php"
     ?>
</div>

<?php

?>
