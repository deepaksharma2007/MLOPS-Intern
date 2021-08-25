<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link href="main.css" rel="stylesheet">
  <meta charset="UTF-8">
  <script src="https://kit.fontawesome.com/1edca5e833.js" crossorigin="anonymous"></script>
  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>

<body>
  <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
      <nav class="nav nav-masthead justify-content-center">
        <h3 style="font-size:2.5rem;color:blue">Information about vehicle in video provided is below </h3><br>
        <br>

      </nav>
    </header>
  </div>
  <br>

  <h4 style="color:blue;display:inline;">Vehile : </h4>
  <h4 style="display:inline">{{ carDesc }}</h4><br>
  <h4 style="color:blue;display:inline;">Model : </h4>
  <h4 style="display:inline">{{ carModel }}</h4>

  <hr>

  {% for key, value in vehInfo.items() %}
  <h4 style="color:blue;display:inline;">{{ key }} : </h4>
  <h4 style="display:inline;">{{ value }}</h4><br>
  {% endfor %}
  <br>
  <hr>

</body>

</html>