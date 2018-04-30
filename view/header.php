<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>leartolearn</title>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>leartolearn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script
              src="http://code.jquery.com/jquery-3.3.1.min.js"
              integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
              crossorigin="anonymous"></script>
            <script
              src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
              integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
              crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../css/jquery-ui.min.css"/>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.9/semantic.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.9/semantic.min.css"/>


            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.js"></script>

    <!-- Customisations -->
    <script src="control/formVladtion.js" defer></script>
    <script src="control/script.js" defer></script>
    <link href="control/main.css" rel="stylesheet" type="text/css">

</head>
<body>



    <h1>learn to learn</h1>

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
