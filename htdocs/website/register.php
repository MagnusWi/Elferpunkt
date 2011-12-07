<?php include('_inc.header.php') ?>

<?= $params ?>


<fb:registration
  fields="name,first_name,last_name,gender,email,password,captcha"
  redirect-uri="http://elferpunkt.de/register/complete"
  width="600">
</fb:registration>

<?php include('_inc.footer.php') ?>
