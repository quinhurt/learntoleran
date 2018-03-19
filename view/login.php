<div class="ui form large" id="login_form">
   <form action="modle\login_process.php" method="POST">

           <input type="text" name="username" id="cust_login_email" placeholder="user name">



           <input type="password" name="pasword" id="cust_login_password" placeholder="Password">


      
           <button type="submit" id="cust_login_submt" class="ui submit positive button fluid blue">
               Login
               <i class="inverted checkmark icon right"></i>
           </button>

       <div id="loginvalidity" class="ui error message"></div>
   </form>
</div>
