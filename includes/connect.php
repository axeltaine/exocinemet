<?php

  try
  {
  	// On se connecte à MySQL
  	$bdd = new PDO('mysql:host=localhost;dbname=allo_cinemet;charset=utf8', "root", "toor");
  }
  catch(PDOException $e)
  {
  	// En cas d'erreur, on affiche un message et on arrête tout
          die('Erreur : '.$e->getMessage());
  }

?>
