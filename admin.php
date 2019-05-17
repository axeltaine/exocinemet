<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <h1>ADMIN</h1>

    <?php
            if(!isset($_POST['Admin_password']) OR $_POST['Admin_password'] != "admin"){
      ?>
    <p>Veuillez entrer le mot de passe pour débloquer l'accès :</p>
    <form action="admin.php" method="post">
        <p>
            <input type="password" name="Admin_password">
            <input type="submit" value="Valider">
        </p>
    </form>

    <?php }
      else{
      ?>

    <p class="description">Admin vous permet d'ajouter un nouveau Film.</p>



    <form action="admin.php" method="post" id="formulaire">
        <div class="form-row ">
            <div class="form-group col-md-6">
                <label for="Movie_name">TITRE</label> :
                <input type="text" name="Movie_name" id="Movie_name">
            </div>
            <div class="form-group col-md-6">
                <label for="Movie_time">DUREE</label> :
                <input type="time" name="Movie_time" id="Movie_time">
            </div>
        </div>
        <div class="form-group">
            <label for="Movie_date">Movie_date</label> :
            <input type="date" name="Movie_date" id="Movie_date">
        </div>
        <div class="form-group">
            <label for="Movie_poster">Movie_poster</label> :
            <input type="text" name="Movie_poster" id="Movie_poster">
        </div>
        <div class="form-group">
            <label for="Movie_synopsis">RESUME</label> :
            <input type="text" name="Movie_synopsis" id="Movie_synopsis">
        </div>
        <div class="form-group">
            <label for="Movie_trailer">VIDEO</label> :
            <input type="text" name="Movie_trailer" id="Movie_trailer">
        </div>
        <div class="form-group">
            <label for="Realisator_name">REALISATEUR</label> :
            <input type="text" name="Realisator_name" id="Realisator_name">
        </div>
        <div class="form-group">
            <label for="Actor_name">ACTEUR</label> :
            <input type="text" name="Actor_name" id="Actor_name">
        </div>

        <button type="submit" class="btn btn-primary">Envoyer</button>

    </form>
    <br>

    <form action="suppresion.php" method="post" id="formulaire">
        <div class="form-row ">
            <div class="form-group col-md-6">
                <label for="Movie_name">TITRE</label> :
                <input type="text" name="Movie_name" id="Movie_name">
            </div>
            </div>
            <button type="submit" class="btn btn-primary">Sup</button>
    </form>

    <?php
      }
      ?>

    <?php
include ('includes/connect.php');
 
// Insertion du message à l'aide d'une requête préparée Movie
$req = $bdd->prepare('INSERT INTO `movie` (Movie_name, Movie_time, Movie_date, Movie_poster, Movie_synopsis, Movie_trailer) VALUES(?, ?, ?, ?, ?, ?)');
$req->execute(array($_POST['Movie_name'], $_POST['Movie_time'], $_POST['Movie_date'], $_POST['Movie_poster'], $_POST['Movie_synopsis'], $_POST['Movie_trailer']));
 
// Insertion du message à l'aide d'une requête préparée Realisateur
$req = $bdd->prepare('INSERT INTO `realisator` (Realisator_name) VALUES(?)');
$req->execute(array($_POST['Realisator_name']));

// Insertion du message à l'aide d'une requête préparée actor
$req = $bdd->prepare('INSERT INTO `actor` (Actor_name) VALUES(?)');
$req->execute(array($_POST['Actor_name']));



?>



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