
function delItaem(elem){
  if(confirm('are you sure')){
    $(elem).parent().parent().empty();
  }
}
