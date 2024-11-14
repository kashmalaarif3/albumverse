<nav>

    <ul>
      <div class = "home">
        <a href= "/"> Home</a>

</div>

    </ul>


    </ul>

    <ul>
         <button class = "add_button"><a href= "/form"> Add to Albumverse</a></button>
      </ul>

<!-- 7. [x] Only show log out if using is logged in -->
<?php if (is_user_logged_in()) { ?>
        <!--5. [x] logout link -->
        <ul class="float-right"><a href="<?php echo logout_url(); ?>">Sign Out</a></ul>
      <?php } ?>

      <img src = "/public/uploads/av.svg" class="logo" alt='logo'>

</nav>
