


 <button id="myBtn">Open Modal</button>
 <div id="myModal" class="modal">

<!-- Modal content -->
<div class="modal-content">
 <span class="close">&times;</span>
<svg width="119px"  height="119px"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid" class="lds-cube" style="background: none;"><g transform="translate(25,25)"><rect ng-attr-x="{{config.dp}}" ng-attr-y="{{config.dp}}" ng-attr-width="{{config.blockSize}}" ng-attr-height="{{config.blockSize}}" ng-attr-fill="{{config.c1}}" x="-5" y="-5" width="10" height="10" fill="#c5523f" transform="scale(2.46845 2.46845)"><animateTransform attributeName="transform" type="scale" calcMode="spline" values="20;1" keyTimes="0;1" dur="4.5s" keySplines="0 0.5 0.5 1" begin="-1.3499999999999999s" repeatCount="indefinite"></animateTransform></rect></g><g transform="translate(75,25)"><rect ng-attr-x="{{config.dp}}" ng-attr-y="{{config.dp}}" ng-attr-width="{{config.blockSize}}" ng-attr-height="{{config.blockSize}}" ng-attr-fill="{{config.c2}}" x="-5" y="-5" width="10" height="10" fill="#f2b736" transform="scale(3.43387 3.43387)"><animateTransform attributeName="transform" type="scale" calcMode="spline" values="20;1" keyTimes="0;1" dur="4.5s" keySplines="0 0.5 0.5 1" begin="-0.9s" repeatCount="indefinite"></animateTransform></rect></g><g transform="translate(25,75)"><rect ng-attr-x="{{config.dp}}" ng-attr-y="{{config.dp}}" ng-attr-width="{{config.blockSize}}" ng-attr-height="{{config.blockSize}}" ng-attr-fill="{{config.c3}}" x="-5" y="-5" width="10" height="10" fill="#499255" transform="scale(6.21059 6.21059)"><animateTransform attributeName="transform" type="scale" calcMode="spline" values="20;1" keyTimes="0;1" dur="4.5s" keySplines="0 0.5 0.5 1" begin="0s" repeatCount="indefinite"></animateTransform></rect></g><g transform="translate(75,75)"><rect ng-attr-x="{{config.dp}}" ng-attr-y="{{config.dp}}" ng-attr-width="{{config.blockSize}}" ng-attr-height="{{config.blockSize}}" ng-attr-fill="{{config.c4}}" x="-5" y="-5" width="10" height="10" fill="#1875e5" transform="scale(4.66822 4.66822)"><animateTransform attributeName="transform" type="scale" calcMode="spline" values="20;1" keyTimes="0;1" dur="4.5s" keySplines="0 0.5 0.5 1" begin="-0.45s" repeatCount="indefinite"></animateTransform></rect></g></svg>
</div>

</div>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
 modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
 modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}
</script>



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
