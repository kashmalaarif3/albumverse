
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Albumverse</title>
  <link rel="stylesheet" type="text/css" href="/public/styles/site.css" media="all">


<?php include './includes/header.php';?>

</head>

<?php

$db = init_sqlite_db('db/site.sqlite', 'db/init.sql');
define("MAX_FILE_SIZE", 1000000000);

if (!(is_user_logged_in())) {?>
<div class = "center">
  <h2>Please login to add an album to Albumverse.</h2>
</div>
  <?php
    echo login_form('/form', $session_messages);?>
<?php } ?>

<?php

if (is_user_logged_in() && $is_admin) {

$upload_file_name = NULL;
$upload_file_ext = NULL;
$upload = $_FILES['images'];

// // values
$form_values = array(
   'title' => '',
   'artist' => '',
   'year' => '',
   'description' => '',
   'images'=> '',
   'file_ext'=> '',
   'category'=> '',

 );


 if (isset($_POST['submit'])) {
   $form_values['title'] = trim($_POST['title'] == '' ? '' : $_POST['title']); // unstrusted

   $form_values['artist'] = trim($_POST['artist'] == '' ? '' : $_POST['artist']); // untrusted

   $form_values['category'] = trim($_POST['category']== '' ? '' : $_POST['category']) ; // untrusted

   $form_values['year'] = trim($_POST['year']== '' ? '' : (int) $_POST['year']);

   $form_values['description'] = trim($_POST['description']== '' ? '' : $_POST['description']) ;

   $form_values['images'] = trim($_POST['images']== '' ? '' : $_POST['images']) ;

   $form_values['file_ext'] = trim($_POST['file_ext']== '' ? '' : $_POST['file_ext']) ;



$categories = exec_sql_query(
  $db, "SELECT * FROM tags"
)->fetchAll();


$fast = array();
foreach($categories as $tag){
  if(in_array($tag['id'], $_POST)) {
    array_push($fast, $tag);
  }
}

$result4 = exec_sql_query(
$db,
  "INSERT INTO album (title, artist, year, description, images, file_ext) VALUES (:title, :artist, :year,  :description, :images, :file_ext);",
  array(
    ':title' => $form_values['title'], // tainted
    ':artist' => $form_values['artist'], // tainted
    ':year' => $form_values['year'], // tainted
    ':description' => $form_values['description'],
    ':images' => $upload_file_name['images'],
    ':file_ext' => $upload_file_ext['file_ext']
   )
  );
  $album_form = $result4->fetchAll();



  $record_id = $db->lastInsertId('id');

foreach($fast as $pull){
  $result5 = exec_sql_query(
    $db,
      "INSERT INTO album_tags (album_id, tag_id) VALUES (:album_id, :tag_id);",
      array(
        ':album_id' => $record_id, // tainted
        ':tag_id' => $pull['id'], // tainted
      )
      );
    }
      // $final = $result5->fetchAll();


  $upload_storage_path = 'public/uploads/albums/' . $record_id . '.jpeg' ;
  ;


  if (move_uploaded_file($upload["tmp_name"], $upload_storage_path) == True) {
    error_log("Failed to permanently store the uploaded file on the file server. Please check that the server folder exists.");
  }

}


?>

<div class = 'form-background'>
<body>

<div class = "flex-vertical">
<div class = "intro">

      <div class = 'form-album'>
      <section>


        <h3>Album Entry</h3>

        <p>Know an Album that's not on this table? Fill out this form to include it!</p>

        <form method="post" action="/form" enctype = "multipart/form-data" novalidate>


                <div class="">
                  <label for="title">Title of Album:</label>
                  <input id="title" type="text" name="title" value="">
                </div>
              <br>



                <div class="">
                  <label for="artist"> Artist's Name:</label>
                  <input id="artist" type="text" name="artist" value="">
                </div>
              <br>
            </div>
          <br>



                <div class="">
                  <label for="year"> Year Released:</label>
                  <input id="year" type="int" name="year" value="">
                </div>
              <br>
            </div>
          <br>

        <label for="genres"> Categories: </label>
        <br>

        <?php
        $tags2 = exec_sql_query(
          $db,
          "SELECT * FROM tags"
        );
        $categories = $tags2->fetchAll();

        foreach($categories as $tag){?>
          <input type="checkbox" name="category" value="<?php echo $tag['id']?>">
          <label for="tag_id"> <?php echo $tag['tag_name']?></label><br>


        <?php }?>
<br>

          <div class="">
                  <label for="description"> Description:</label>
                  <textarea id="description" name="description"> </textarea>
                </div>
              <br>
            </div>
          <br>

</div>

  <section class="upload">
      <h2>Upload Album Cover</h2>

        <input type = "hidden" name="MAX_FILE_SIZE" value = "<?php echo MAX_FILE_SIZE;?>">

        <!-- MAX_FILE_SIZE must precede the file input field -->

        <div class="">
          <label for="upload-file">Album Cover:</label>

          <input id="upload-file" type="file" name="images" >
        </div>



                <div class="">
                  <label for="file-name"> File Name:</label>
                  <input id="file-name" type="text" name="file-name">
                </div>
              <br>
            </div>

          <div class="">
                  <label for="extension"> Extension (jpeg only):</label>
                  <input id="extension" type="text" name="extension">
                </div>
              <br>
            </div>
          <br>


          <div class = "align">
                <input type="submit" value="Add to Albumverse" name='submit'> </div>
                  </form>
                </section>
                </div>
                </div>
            </div>
                <br>

      </form>
    </section>

</body>
<?php } ?>
</div>

<?php
if (is_user_logged_in() && !($is_admin)) {?>
<p> You have to be an admin to add an album. Return to the <a href= 'pages/home.php'>home page</a>.

<?php }?>
