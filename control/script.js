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

window.onload = function() {
    getlesson();
    setInterval(getNoInQueue, 30000);
}
