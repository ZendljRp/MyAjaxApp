<%--
  Created by IntelliJ IDEA.
  User: Luis
  Date: 26/05/2016
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
  <head>
    <title>.:: My Ajax App ::.</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2>Example for Ajax and Servlet with IDE IntelliJ</h2>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <form id="form1" class="form-horizontal">
            <div class="form-group">
              <label for="name" class="col-sm-2 control-label">Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="name">
              </div>
            </div>
            <div class="form-group">
              <label for="lastname" class="col-sm-2 control-label">Last Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="lastname">
              </div>
            </div>
            <div class="form-group">
              <label for="years" class="col-sm-2 control-label">Years Old</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="years">
              </div>
            </div>

            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="button" id="submit" class="btn btn-default">Add</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-sm-10">
          <!-- 	En este div metemos el contenido de la tabla con AJAX -->
          <div id="tabla"></div>
        </div>
      </div>
    </div>

    <script>
      $(document).ready(function() {
        $('#submit').click(function(event) {
          var nameVar = $('#name').val();
          var lastnameVar = $('#lastname').val();
          var yearsVar = $('#years').val();
          // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
          $.post('actioned', {
            name : nameVar,
            lastname: lastnameVar,
            years: yearsVar
          }, function(responseText) {
            $('#tabla').html(responseText);
          });
          $('#name').val('');
          $('#lastname').val('');
          $('#years').val('');
          $('#name').focus();
        });

      });
    </script>


  </body>
</html>
