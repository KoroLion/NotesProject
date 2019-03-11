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

		<h3 class="my-4 text-secondary">Редактирование записки #<?php echo $_GET['id']; ?></h3>
		<div class="my-4">
			<a class="btn btn-primary" href="shownote.php?id=<?php echo $_GET['id']; ?>"><i class="fa fa-chevron-left" aria-hidden="true"></i> Вернуться назад</a>
		</div>

		<div class="card">
      <?php
          $db = new PDO('mysql:host=localhost;dbname=notesproject', 'root', '');

          $query = $db->prepare('SELECT title, content FROM notes WHERE id = ?;');
          $query->execute(array($_GET['id']));

          $result = $query->FETCHALL(PDO::FETCH_ASSOC);
          $e = $result[0];
      ?>
			<div class="card-body">
				<form method="POST" action="shownote.php?id=<?php echo $_GET['id']; ?>">
					<input type="hidden" name="edit_id" value="<?php echo $_GET['id']; ?>">

            <div class="form-group">
                <input type="text" name="edit_title" value="<?php echo $e['title']; ?>" class="form-control">
            </div>
            <div class="form-group">
                <textarea name="edit_content" class="form-control" rows="7"><?php echo $e['content']; ?></textarea>
            </div>
            <div class="from-group">
                <input type="submit" class="btn btn-success" value="Сохранить">
            </div>
        </form>
			</div>
		</div>
	</div>
</body>
</html>
