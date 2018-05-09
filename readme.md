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

renderlesson(lessonarry){
outHTML = '';
for(var loop=0;loop<lessonArray.length;loop++) {
    outHTML += '<div class="queuerow">';
    outHTML += '<span>' + lessonArray[loop].LessonID + '</span>';
    outHTML += '<span>' + lessonArray[loop].lessonName + '</span>';
outHTML += '<span><a href="#" onClick="getlesson(' + lessonArray[loop].queue_ID + ')">lll</a></span>';
    outHTML += '</div>';
}
document.getElementById('lessonlist').innerHTML = outHTML;
}
