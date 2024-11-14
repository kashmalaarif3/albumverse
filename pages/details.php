<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Albumverse</title>
  <link rel="stylesheet" type="text/css" href="/public/styles/site.css" media="all">

  <?php include './includes/header.php'; ?>

<?php


$db = init_sqlite_db('db/site.sqlite', 'db/init.sql');
?>


<?php

$id = $_GET['album-id'];
$result2 = exec_sql_query(
  $db,
  "SELECT *
  FROM album_tags INNER JOIN tags ON album_tags.tag_id = tags.id WHERE album_tags.album_id = ". $id
 );
 ?>



<?php
$result = exec_sql_query(
  $db,
  "SELECT *
  FROM album WHERE album.id = ". $id
 );
 $album = $result->fetchAll();



foreach ($album as $record) {?>
 <div class="album-title"><?php echo htmlspecialchars( $record['title']); ?> </div>
 <br>
 <br>

<div class = 'horizontal'>
 <img src= "<?php
   echo $file_url = '/public/uploads/albums/' . $record['id'] . '.jpeg';
  ?>" alt=" Album Cover"></a>

<div class = "vertical">
 <div class="album-description"><?php echo htmlspecialchars( $record['description']); ?></div>
 <br>
 <div class = 'album-bottom'>
 <div class="album-artist"><?php echo htmlspecialchars( $record['artist']); ?></div>
 <div class="album-year"><?php echo htmlspecialchars( $record['year']); ?></div>
</div>

</div>
</div>
<br>

<?php $album2 = $result2->fetchAll();
foreach ($album2 as $record){?>
  <div class = "tag">
    <?php echo htmlspecialchars(' '.$record['tag_name'])?>
  </div>

<?php } ?>

<?php } ?>


</head>

<body>

</body>
