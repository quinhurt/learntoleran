admin
username : admin
password : pasword

admin can create new teacher
admin can view all active uses
create new class

/////////////////////////////////////////////////////////
teacher
username : peter1
password : muchow

teacher can create new assignment
teacher can create new lesson
teacher can view student submitted assignment
teacher can view there lesson



/////////////////////////////////////////////////////////
student
username : qhurt1
password : qwerty

student can update there user information
student can upload assignments
student can view assignment
student can view lesson



/////////////////////////////////////////////////////////////////////////////////////////
session_start()if (isset($_SESSION['roll'])) {
  if ($_SESSION['roll'] != '1') {
    Header('location: index.php')
  }

}else {
  Header('location: index.php')
}


session_start()if (isset($_SESSION['roll'])) {
  if ($_SESSION['roll'] != '1') {
    Header('location: index.php')
  }

}else {
  Header('location: index.php')
}


/*
$('#sandbox-container input').datepicker({
    format: "yyyy/mm/dd",
    weekStart: "sunday",
    startDate: 1901,
    startView: 1,
    minViewMode: 1,
    maxViewMode: 2,
    autoclose: true,
    todayHighlight: true
});
*/
