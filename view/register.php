<form action="registration_process.php" method="post">
  <input class="valid" type="text" placeholder="first name" name="fname" >
  <input class="valid" type="text" placeholder="last name" name="lname" >
  <input class="valid" type="text" placeholder="phone" name="phone">
  <input class="valid" type="text" placeholder="email" name="email" id="email">
  <input class="valid" type="text" placeholder="date of birth" name="DOB" value="">
  <input class="valid" type="text" placeholder="password" name="password" id="pasword">
  <input class="valid" type="text" placeholder="paswords" name="paswords2" id="paswordRepeat" onchange="validatePassword()">
  <input type="submit" name="submit">
</form>
