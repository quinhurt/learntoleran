
<?php
function dbConnect() {
$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "emailvalid";

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);


}
?>
