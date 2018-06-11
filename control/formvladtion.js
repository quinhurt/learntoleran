
  function new_class(){
    show()
    var queueURL = "modle/newclass_process.php";
    $.ajax({
        url: queueURL,
        method: 'post',
        data: $('#class').serialize(),
        datatype: 'json',
        success: function(res) {

          console.log(res);
          document.getElementById('classname').value = '';
          hide()
        },
        error: function(err) {
          hide()
            console.log('err');
            console.log(err);
        }
    });
}


function show(){
  var x = document.getElementById("svg");
  if (x.style.display === "block") {
  } else {
      x.style.display = "block";
  }
}


function hide(){
var x = document.getElementById("svg");
if (x.style.display === "none") {
} else {
    x.style.display = "none";
}
}





function getlesson(lesson) {
    var queueURL = "modle/viewlesson_p.php?lessonID=" + lesson;
    $.ajax({
        url: queueURL,
        method: 'get',
        datatype: 'json',
        success: function(res) {
          console.log(res);
          renderlesson(res);
        },
        error: function(err) {
            console.log('err');
            console.log(err);
        }
    });
}


  function renderlesson(lessonArry){
      outHTML = '';
    for(var loop=0;loop<lessonArry.length;loop++){
      outHTML += '<div class"lesson">';
      outHTML += '<span class"right" >' + lessonArry[loop].tutorial + '</span>';
      outHTML += '</div>';
    }  document.getElementById('someidinyourDOM').innerHTML = lessonArry.tutorial;
    }
