<!DOCTYPE html>
<html lang="en">
<head>
    <title>CIT 230: Front-end Web Dev - BYU-Idaho</title>
	<meta charset="utf-8" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/site.css">
</head>
<body>

    <header>
        <h1>Arturo B. Student</h1>
        <h2>PHP Assignment</h2>
        <div class="date"><?php echo date("l\, j F Y"); ?></div>
    </header>
    <main>
    <section>
        <h3>PHP System Information</h3>
        <table>
        <thead>
            <tr>
                <th>Method</th>
                <th>Result</th>
            </tr>
            
        </thead>

        <tbody>
            <tr>
             <td>PHP Version</td>
             <td><?php echo phpversion(); ?></td>
            </tr>
            <tr>
             <td>Operating System</td>
             <td><?php echo php_uname('s'); ?></td>
            </tr>
            <tr>
             <td>Host Name</td>
             <td><?php echo php_uname('n'); ?></td>
            </tr>
            <tr>
             <td>Version Install</td>
             <td><?php echo php_uname('v'); ?></td>
            </tr>      
            <tr>
             <td>Machine Type</td>
             <td><?php echo php_uname('m'); ?></td>
            </tr>       
        </tbody>
      </table>
    </section>
    <section>
        <h3>PHP Dynamic Table</h3>
        <table>
         <tr>
          <?php          
            for ($i = 1; $i <= 25; ++$i) {
              echo "<td>" . $i . "</td>";
              if (($i % 5) == 0 && $i != 25) {
                echo "</tr><tr>";
              }             
            }
          ?>
         </tr>
        </table>
    </section>
    </main>
    <footer>
        &copy;2016 | Arturo B. Student | CIT 230 - <a href="http://www.byui.edu">Brigham Young University - Idaho</a>
    </footer>
</body>
</html>
