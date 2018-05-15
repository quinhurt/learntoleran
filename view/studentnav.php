<nav>
  <button class="btn btn-primary" id="update2" onclick="return change()" >update</button>

<button  class="btn btn-primary" id="viewlesson2" onclick="change1()" >lessons </button>
 <button class="btn btn-primary" id="new2"  class="logout" onclick="change2()" > new assigments</button>
  <a href="modle/logout.php" > Logout</a>
</nav>


<div id="update">
    <?php
    include "update.php"
    ?>
</div>
    <br>
<div id="viewlesson">


    <?php
    include "viewlesson.php"
     ?>
</div>

<div id="new">
    <?php
    include "new.php"
     ?>
</div>
