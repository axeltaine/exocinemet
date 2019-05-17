<?php include 'includes/connect.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="css/style1.css" rel="stylesheet">
  <link rel="stylesheet" href="css/footer.css">


</head>

<body>

  <!--//////////////////////////////  NAVBAR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

  <header id="haut">
    <?php include 'includes/header.php'; ?>
  </header>

  <!--//////////////////////////////  Img HEADER  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

  <div class="header_films"> </div>


  <!--//////////////////////////////  MINIATURES FILMS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


  <section class="main-container">
    <div class="location" id="home">
      <h1 id="home">Films</h1>
      <div class="box">

                   <?php

              $stmt = $bdd->prepare('SELECT * FROM movie INNER JOIN relation1 ON movie.Id_movie = relation1.Id_movie WHERE Id_genre = "'.$_POST["genre_id"].'"');
              $stmt->execute();
 
                 while($row=$stmt->fetch(PDO::FETCH_ASSOC))
                 {
                   extract($row);
                     ?>



<h1 data-toggle="modal" data-target="#exampleModal<?php echo $Id_movie; ?>" aria-controls="exampleModal">  <img src="<?php echo $row['Movie_poster']?>" alt=""> </h1>



     <!-- Modal -->
<div class="modal fade" id="exampleModal<?php echo $Id_movie; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel<?php echo $Id_movie; ?>"><?php echo $row['Movie_name'] ; ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <?php echo $row['Movie_synopsis'] ; ?><br>
          
            <?php echo $row['Movie_trailer'] ; ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Add favoris</button>
      </div>
     </div>
      </div>
    </div>
        <?php
      
    }

    ?>
   
    </div>


  </section>

  <!--//////////////////////////////  FOOTER  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

  <?php include 'includes/footer.php'; ?>



  <!--//////////////////////////////  SCRIPTS  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

  <script src="https://code.jquery.com/jquery-3.4.0.slim.min.js"
    integrity="sha256-ZaXnYkHGqIhqTbJ6MB4l9Frs/r7U4jlx7ir8PJYBqbI=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
  </script>

</body>

</html>




