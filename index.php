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

  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/THE-VILLAINESS.jpg" class="d-block w-100 img" height="960px" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/hobbit_3.jpg" class="d-block w-100 img" height="960px" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/escobar.jpg" class="d-block w-100 img" height="960px" class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


  <div class="bg1">
    <h1 class="text-center  mb-3">Nouveautés</h1>
    <hr class="col-4" style="background-color: red;">

    <section id="slider">
      <input type="radio" name="slider" id="s1">
      <input type="radio" name="slider" id="s2">
      <input type="radio" name="slider" id="s3" checked>
      <input type="radio" name="slider" id="s4">
      <input type="radio" name="slider" id="s5">
      <label for="s1" id="slide1"></label>
      <label for="s2" id="slide2"></label>
      <label for="s3" id="slide3"></label>
      <label for="s4" id="slide4"></label>
      <label for="s5" id="slide5"></label>
    </section>
  </div>


  <div class="container-titre mx-auto my-5 text-center">
    <div class="parallax-window" data-parallax="scroll" data-image-src="img/pop.jpeg"></div>

    <hr class="col-4" style="background-color: red;">
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