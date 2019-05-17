<?php
session_start();
include 'includes/connect.php'; 

if(isset($_POST['formconnexion'])) {
   $pseudoconnect = htmlspecialchars($_POST['pseudoconnect']);
   $passwordconnect = sha1($_POST['passwordconnect']);
   if(!empty($pseudoconnect) AND !empty($passwordconnect)) {
      $requser = $bdd->prepare("SELECT * FROM user WHERE pseudo = ? AND password = ?");
      $requser->execute(array($pseudoconnect, $passwordconnect));
      $userexist = $requser->rowCount();
      if($userexist == 1) {
         $userinfo = $requser->fetch();
         $_SESSION['id'] = $userinfo['id'];
         $_SESSION['pseudo'] = $userinfo['pseudo'];
         $_SESSION['mail'] = $userinfo['mail'];
         header("Location: membre.php?id=".$_SESSION['id']);
      } else {
         $erreur = "Mauvais mail ou mot de passe !";
      }
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>Connexion</title>
</head>

<body>

<h1 class="text-center">Login page</h1>
<h2 class="text-center alert alert-danger"><a href="inscription.php">Si vous n'êtes pas membre, merci de vous inscrire</a></h2>
<br>
<form class="form-horizontal" method="post" action="">
   <div class="form-group">
      <div class="col-md-4 col-md-offset-4">
         <input id="pseudoconnect" name="pseudoconnect" type="text" placeholder="Votre nom" class="form-control input-md" required>
      </div>
   </div>
   <div class="form-group">
      <div class="col-md-4 col-md-offset-4">
         <input id="passwordconnect" name="passwordconnect" type="password" placeholder="Votre password" class="form-control input-md" required>
      </div>
   </div>
   <div class="form-group">
      <div class="col-md-4 col-md-offset-4">
         <button type="submit" class="btn btn-primary" name="formconnexion">Je me connecte</button>
      </div>
   </div>
</form>
<?php
          if(isset($erreur)) {
            echo $erreur;
          }
      ?>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
  </script>
</body>
</html>