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
		<h3 class="my-4 text-secondary">Добавить записку</h3>
		<div class="my-4">
			<a class="btn btn-primary" href="index.php"><i class="fa fa-chevron-left" aria-hidden="true"></i> Вернуться назад</a>
		</div>

		<div class="card">
			<div class="card-body">
				<form method="POST" action="index.php">
					<div class="form-group">
						<label for="title">Название записки</label>
						<input type="text" class="form-control" id="title" name="title">
					</div>
					<div class="form-group">
						<label for="content">Текст записки</label>
						<textarea type="text" class="form-control" rows="10" id="content" name="content"></textarea>
					</div>
					<div class="form-group">
						<button class="btn btn-success" type="submit"><i class="fa fa-check" aria-hidden="true"></i> Добавить записку</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
