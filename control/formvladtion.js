
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
          document.getElementId('someidinyourDOM').innerHTML = res;
            queueContents = res;
        },
        error: function(err) {
            console.log('err');
            console.log(err);
        }
    });
}
