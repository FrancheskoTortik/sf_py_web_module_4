<html><head>
  <meta charset='utf-8'>
  <title>Гороскоп на сегодня</title>
  <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous"
  />
  <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    
  </head>
  <body>
    <div class="container">
      <h1 id="header">Что день {{ date }} готовит</h1>

      % if special_date:
      <h2 id="tr">Сегодня супер особенный день!</h2>
      % end

      % for pred in predictions:
      <p id='secret'>{{ pred }}</p>
      % end

    </div>
  </body>
    <script src="helpers.js"></script>
    
</html>