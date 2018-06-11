
<legend>new lesson</legend>
<form  action="modle/lesson.php"  method="post" id="lesson">


 <input  class="form-control"  type="text" name="lessonname"  id="lessonname">

  <input   type="text" name="tutorial" id="txtEditor">

<input type="submit" name="button"  >
</form>


<script>
    $(document).ready(function() {
      $("#txtEditor").Editor();
      date_input.Editor()({
        })
    })
  </script>
