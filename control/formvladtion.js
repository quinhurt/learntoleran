
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

function new_lesson(){
  var queueURL = "modle/lesson.php";
  $.ajax({
      url: queueURL,
      method: 'post',
      data: $('#lesson').serialize(),
      datatype: 'json',
      success: function(res) {
        console.log(res);
        document.getElementById('lessonname').value = '';
       document.getElementById('tutorial').value = '';
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
            queueContents = res;
        },
        error: function(err) {
            console.log('err');
            console.log(err);
        }
    });
}
