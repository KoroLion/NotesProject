<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>Все записки</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
</head>

<body class="bg-light">
	<div class="container">
		<h1 class="my-4 text-center"><i class="fa fa-file-text-o" aria-hidden="true"></i> Мои записки</h1>
		<h3 class="my-4 text-secondary">Все записки</h3>
		<div class="my-4">
			<a class="btn btn-primary" href="addnote.php"><i class="fa fa-plus" aria-hidden="true"></i> Добавить записку</a>
		</div>

		<?php
			$db = new PDO('mysql:host=localhost;dbname=notesproject', 'root', '');

			// Добавление записки
			if (isset($_POST['title']) && isset($_POST['content'])) {
				$title = strip_tags($_POST['title']);
				$content = strip_tags($_POST['content']);

				$query = $db->prepare('INSERT INTO notes (title, content) VALUES (?, ?);');
				$query->execute(array($title, $content));

				echo '<div class="alert alert-success">Записка успешно добавлена!</div>';
			}

			// Удаление записки
			if (isset($_POST['delete_id'])) {
				$query = $db->prepare('DELETE FROM notes WHERE id = ?;');
				$query->execute(array($_POST['delete_id']));

				echo '<div class="alert alert-warning">Записка успешно удалена!</div>';
			}
		?>

		<div class="list-group">
		    <?php
		        $query = $db->query('SELECT * FROM notes;');
		        $result = $query->FETCHALL(PDO::FETCH_ASSOC);

		        foreach ($result as $e) {
		            echo '<a href="shownote.php?id='.$e['id'].'" class="list-group-item list-group-item-action">'.$e['title'].'</a>';
		        }
		    ?>
		</div>
	</div>
</body>
</html>
