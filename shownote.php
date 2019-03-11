<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>Добавить записку</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
</head>

<body class="bg-light">
	<div class="container">
		<h1 class="my-4 text-center"><i class="fa fa-file-text-o" aria-hidden="true"></i> Мои записки</h1>

		<h3 class="my-4 text-secondary">Просмотр записки #<?php echo $_GET['id']; ?></h3>
		<div class="my-4">
			<a class="btn btn-primary mr-2" href="index.php"><i class="fa fa-chevron-left" aria-hidden="true"></i> Вернуться назад</a>
      <a class="btn btn-success mr-2" href="editnote.php?id=<?php echo $_GET['id']; ?>">Редактировать</a>
			<form method="POST" action="index.php" class="mr-2" style="display: inline-block;">
				<input type="hidden" name="delete_id" value="<?php echo $_GET['id']; ?>">
				<input type="submit" class="btn btn-danger" value="Удалить">
			</form>
		</div>

		<div class="card">
      <?php
        $db = new PDO('mysql:host=localhost;dbname=notesproject', 'root', '');

				if (isset($_POST['edit_title']) && isset($_POST['edit_content'])) {
					$id = $_POST['edit_id'];
					$title = strip_tags($_POST['edit_title']);
					$content = strip_tags($_POST['edit_content']);

					$query = $db->prepare('UPDATE notes SET title = ?, content = ? WHERE id = ?;');
					$query->execute(array($title, $content, $id));

					echo '<strong class="p-3">Записка обновлена!</strong>';
				}

        //$query = $db->query('SELECT title, content FROM notes WHERE id = '.$_GET['id'].';'); //shownote.php?id=1; DROP TABLE notes;

        $query = $db->prepare('SELECT title, content FROM notes WHERE id = ?;');
        $query->execute(array($_GET['id']));

        $result = $query->FETCHALL(PDO::FETCH_ASSOC);
        $e = $result[0];
      ?>
			<div class="card-body">

				<h4 class="text-secondary mb-4"><?php echo $e['title']; ?></h4>
				<p class="text-secondary"><?php echo $e['content']; ?></p>
			</div>
		</div>
	</div>
</body>
</html>
