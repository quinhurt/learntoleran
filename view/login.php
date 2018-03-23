<div class="ui form large" id="login_form">
   <form action="modle\loginprocess.php" method="POST">
           <input type="text" name="username" id="cust_login_email" placeholder="user name">
           <input type="password" name="pasword" id="cust_login_password" placeholder="Password">

           <button type="submit" >
               Login
                </button>

       <div id="loginvalidity" class="ui error message"></div>
   </form>
</div>
