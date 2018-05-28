
  function new_class(){
    var queueURL = "modle/newclass_process.php";
    $.ajax({
        url: queueURL,
        method: 'post',
        data: $('#class').serialize(),
        datatype: 'json',
        success: function(res) {
          console.log(res);
          document.getElementById('classname').value = '';

        },
        error: function(err) {
            console.log('err');
            console.log(err);
        }
    });
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
      outHTML += '<span>' + lessonArry[loop].tutorial + '</span>';
      outHTML += '</div>';
    }  document.getElementById('someidinyourDOM').innerHTML = lessonArry.tutorial;
    }





    function lessonname() {
        var queueURL = "modle/.php?lessonID=";
        $.ajax({
            url: queueURL,
            method: 'get',
            datatype: 'json',
            success: function(go) {
              console.log(res);
              renlessonname(res);
            },
            error: function(err) {
                console.log('err');
                console.log(err);
            }
        });
    }
