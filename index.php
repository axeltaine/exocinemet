<?php include ('includes/connect.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">


  <title>AllocineMet</title>

  <link href="https://fonts.googleapis.com/css?family=Poiret+One|Roboto+Condensed" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/carousel.css">
  <link rel="stylesheet" href="css/footer.css">



</head>


<body>


  <header id="haut">
    <?php include 'includes/header.php'; ?>
  </header>


  <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/THE-VILLAINESS.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
        <a class="btn btn-success btn-lg" href="film.php" role="button">Commencer une nouvelle aventure</a>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/hobbit_3.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
        <a class="btn btn-success btn-lg" href="film.php" role="button">Commencer une nouvelle aventure</a>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/escobar.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
        <a class="btn btn-success btn-lg" href="film.php" role="button">Commencer une nouvelle aventure</a>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

  <?php include 'includes/footer.php'; ?>


 
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="js/parallax.min.js"></script>
  <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
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