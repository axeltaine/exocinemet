
<nav class="navbar navbar-expand-lg navbar-light" id="navbarSupportedContent">
  <a class="navbar-brand" href="./index.php">ALLOCINE<strong>MET</strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="film.php">Films <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="connexion.php">Se connecter</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Genre
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <?php
    $list_genre = $bdd->query('SELECT * FROM genre');
    while ($data_genre = $list_genre->fetch()){
      ?>
      <a href="#">
        <form class="" action="test.php" method="post">
        <input type="hidden" name="genre_id" value=" <?php echo $data_genre['Id_genre']; ?> ">
          <button type="submit" name="button" class="btn-flat white-text btn--sidenav-style"> <?php echo $data_genre['Genre_name']; ?> </button>
        </form>
      </a>
        <?php
    }
  ?>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>