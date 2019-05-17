<?php include 'includes/connect.php'; 


if(isset($_POST['forminscription'])) 
{
  if(!empty($_POST['pseudo']) AND !empty($_POST['mail'])AND !empty($_POST['password']))
  {
   $pseudo = htmlspecialchars($_POST['pseudo']);
   $mail = htmlspecialchars($_POST['mail']);
   $password = sha1($_POST['password']);

   $pseudolength = strlen($pseudo);

   if($pseudolength <= 255) {

    $insertmbr = $bdd->prepare("INSERT INTO user (pseudo, mail, password) VALUES(?, ?, ?)");
    $insertmbr->execute(array($pseudo, $mail, $password));
    $erreur = "Votre compte a bien été créé ! <a href=\"connexion.php\">Me connecter</a>";
   }
   else {
     $erreur = "pseudo trop long";
   }
  }
  else {
    $erreur = " tous les champs doivent etre completer";
  }
}

?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Connexion</title>
  </head>
  <body>
  
<h1 class="text-center">Inscription</h1>
<br>
<div class="container">
      <form method="post" class="pure-form pure-form-aligned">
         <div class="input-group">
           <span class="input-group-addon" id="basic-addon1">Pseudo</span>
           <input type="text" class="form-control" id= "pseudo" name="pseudo" placeholder="Votre pseudo" aria-describedby="basic-addon1">
         </div>
         <br>
         <div class="input-group">
           <span class="input-group-addon" id="basic-addon1">Password</span>
           <input type="password" class="form-control" id= "password" name="password" placeholder="Votre mot de passe" aria-describedby="basic-addon1">
         </div>
         <br>
         <div class="input-group">
           <span class="input-group-addon" id="basic-addon1">Email</span>
           <input type="email" class="form-control" id= "mail" name="mail" placeholder="Votre Email" aria-describedby="basic-addon1">
         </div>
         <br>
      <br>
      <input type="submit" name="forminscription" class="btn btn-success" value="S'inscrire">
      </form>
      <?php
          if(isset($erreur)) {
            echo $erreur;
          }
      ?>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>