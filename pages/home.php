<?php
$db = init_sqlite_db('db/site.sqlite', 'db/init.sql');

//$result = exec_sql_query($db,'SELECT * FROM album;');
//$album = $result->fetchAll();



 ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Albumverse</title>
  <link rel="stylesheet" type="text/css" href="/public/styles/site.css" media="all">


<?php include './includes/header.php';?>

</head>
<div class = "header">
    <h1>Welcome to ALBUMVERSE</h1>
</div>

<?php
$show = $_GET['tag_name'];

if (isset($show)) {

$result2 = exec_sql_query($db, "SELECT
album.id AS 'id',
album.title AS 'title',
album.artist AS 'artist',-
album.year AS 'year',
album.description AS 'description',
album.images AS 'images',
album.file_ext AS 'file_ext',
album_tags.album_id AS 'album_tags.album_id',

FROM album_tags
INNER JOIN album ON (album.id = album_tags.album_id)
WHERE (album_tags.tag_id = :tag_name)", array(":tag_name" => $show));
} else {
  $result2 = exec_sql_query(
    $db,
    "SELECT * FROM album"
  );
}
$album_filter = $result2->fetchAll();

$tags = exec_sql_query(
  $db,
  "SELECT * FROM tags"
);

?>


<div class="filter">
    <div class="filter-header">

    </div>
    <div class="entry">
      <div class="entry2">
        <?php foreach ($tags as $tag) {
          $file_url = '/public/uploads/albums/' . $tag['id'] . '.jpeg'; ?>
          <a class = "tag-button" src="<?php echo htmlspecialchars($file_url); ?>" href="/?<?php echo http_build_query(array('tag_name' => $tag['id'])); ?>"><?php echo $tag['tag_name']; ?></a>
        <?php } ?>
      </div>
    </div>
  </div>
  <br>

<div class = "shorter">
<?php

foreach ($album_filter as $record) { ?>
  <div class = 'albums'>
    <figure>

      <div class = "zoom">
        <div class="card">
        <a href="/details?<?php echo http_build_query(array('album-id' => $record['id'])) ?>">
         <img src="./public/uploads/albums/<?php echo $record['id']  . '.jpeg'?>" alt="Album Cover"></a>
        <div class = "home-title">
        <?php echo htmlspecialchars( $record['title']); ?></div>
        <div class = "home-artist">
          <cite><a href= "https://en.wikipedia.org/wiki/Category:Albums"> Image Source </a> </cite>
        <?php echo htmlspecialchars( $record['artist']); ?></div>
        </div>
</div>
</div>

        </figure>




<?php } ?>
</div>
</div>
</div>
</div>


    </main>

</body>

</html>
