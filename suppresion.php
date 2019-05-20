<?php
include ('includes/connect.php');

if(isset($_POST['erase'])){
          if(isset($_POST['Id_movie'])){
            $efface = $_POST['Id_movie'];
            $byefait = $bdd->prepare('DELETE FROM relation0 WHERE relation0.Id_movie='.$efface);
            $byefait->execute();
            $byejoue = $bdd->prepare('DELETE FROM relation1 WHERE relation1.Id_movie='.$efface);
            $byejoue->execute();
            $byepossede = $bdd->prepare('DELETE FROM relation2 WHERE relation2.Id_movie='.$efface);
            $byepossede->execute();
            $byepossede = $bdd->prepare('DELETE FROM relation3 WHERE relation3.Id_movie='.$efface);
            $byepossede->execute();
            $erase = $bdd->prepare('DELETE FROM movie WHERE movie.Id_movie='.$efface);
            $erase->execute();
            echo "<h1>Le film sélectionné a été effacé</h1><br />";
          }else{
            echo "<h1>Aucune donnée à effacer</h1><br />";
          }
        }
        header('Location: admin.php');
?>