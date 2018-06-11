
function edittaem(elem){
  if(confirm('are you sure')){
    ;
  }
}


$(document).ready(function(){
  var date_input=$('input[name="dob"]'); //our date input has the name "date"
  var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
  date_input.datepicker({
    format: 'yyyy-mm-dd',
    container: container,
    todayHighlight: true,
    autoclose: true,
  })
})


function isMobile() {
 if( navigator.userAgent.match(/Android/i)
 || navigator.userAgent.match(/webOS/i)
 || navigator.userAgent.match(/iPhone/i)
 || navigator.userAgent.match(/iPad/i)
 || navigator.userAgent.match(/iPod/i)
 || navigator.userAgent.match(/BlackBerry/i)
 || navigator.userAgent.match(/Windows Phone/i)
 ){
    lert('Opera');
  }
 else {
    alert('unknown');
  }
}




function myFunction() {
    if((navigator.userAgent.indexOf("Opera") || navigator.userAgent.indexOf('OPR')) != -1 )
   {
       alert('Opera');
   }
   else if(navigator.userAgent.indexOf("Chrome") != -1 )
   {
       alert('Chrome');
   }
   else if(navigator.userAgent.indexOf("Safari") != -1)
   {
       alert('Safari');
   }
   else if(navigator.userAgent.indexOf("Firefox") != -1 )
   {
        alert('Firefox');
   }
   else if((navigator.userAgent.indexOf("MSIE") != -1 ) || (!!document.documentMode == true )) //IF IE > 10
   {
     alert('IE');
   }
   else
   {
      alert('unknown');
   }
   }



   $(document).ready(function(){
 		var date_input=$('input[name="dob"]'); //our date input has the name "date"
 		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
 		date_input.datepicker({
 			format: 'yyyy-mm-dd',
 			container: container,
 			todayHighlight: true,
 			autoclose: true,
 		})
 	})
