
function edittaem(elem){
  if(confirm('are you sure')){
    ;
  }
}





///////////////////////////////

/*
$('#eventForm').formValidation({
    framework: 'bootstrap',
    icon: {
        ...
    },
    fields: {
        selectedDate: {
            // The hidden input will not be ignored
            excluded: false,
            validators: {
                notEmpty: {
                    message: 'The date is required'
                },
                date: {
                    format: 'MM/DD/YYYY',
                    message: 'The date is not a valid'
                }
            }
        }
    }
});   */



$('.datepicker').datepicker({
    startDate: '-3d'
});
