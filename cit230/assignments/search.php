
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, intial-scale=1.0, user-scalable=no">
    <title>Search using PHP</title>
    <meta name="description" content="zimply zesting with titled techs zearch">	
    <meta name="robots" content="index, follow">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">  
	<meta name="google-site-verification" content="#">

    <link rel="stylesheet" href="../css/site.css" />
</head>
<body>
    <header>
        <h1>blazzard</h1>
    </header>
    <main>
      <section class="pagecontent">
        <h2>Search -Sandbox-</h2>
        <fieldset class="instructions">
            <legend>Instructions</legend>
            Search page testing. Use Scripture in one section.<br>
            <date><?php echo(Date('l\, j F Y')); ?></date>
        </fieldset>
        <form action="" method="get">
           <input type="text" name="searchstring" size="40" value="<?php echo $_GET['searchstring']; ?>">
           <input type="submit" value="Search Site">
        </form>
       </section>

       <?php
        if ($_GET['searchstring'] != "") { ?>
        <section class="results">
            <?php
                $searchString = $_GET['searchstring'];
                $input_parsed = explode(" ", $searchString);
                foreach ($input_parsed as $str => $value)
                {   
                    echo($value + '<br>');
                }
                print(file_get_html('http://www.google.com')->plaintext);
            ?>
        </section>
       
       <?php } ?>
       <section class="pagetext">
        <h2>Alma 5: 14-16</h2>
        14 And now behold, I ask of you, my brethren of the church, have ye spiritually been born of God? Have ye received his image in your countenances? Have ye experienced this mighty change in your hearts?<br>

        15 Do ye exercise faith in the redemption of him who created you? Do you look forward with an eye of faith, and view this mortal body raised in immortality, and this corruption raised in incorruption, to stand before God to be judged according to the deeds which have been done in the mortal body?<br>

        16 I say unto you, can you imagine to yourselves that ye hear the voice of the Lord, saying unto you, in that day: Come unto me ye blessed, for behold, your works have been the works of righteousness upon the face of the earth?
       </section> 
    </main>
    <footer>
        &copy;[zimply blazzard]  &nbsp;|&nbsp;  all rights reserved  &nbsp;|&nbsp;  <date><?php echo(Date('l\, j F Y')); ?></date>
    </footer>
</body>
</html>
