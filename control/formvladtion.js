


  function new_class(){
    var queueURL = "modle/newclass_process.php";
    $.ajax({
        url: queueURL,
        method: 'post',
        data: $('#class').serialize(),
        datatype: 'json',
        success: function(res) {
          console.log(res);
                //getnewclass();
          document.getElementById('classname').value = '';

        },
        error: function(err) {
            console.log('err');
            console.log(err);
        }
    });
}
