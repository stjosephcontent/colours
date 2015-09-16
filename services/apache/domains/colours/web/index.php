<!doctype html>
<html>
	<head>
		<meta charset="utf8" />
		<link rel="stylesheet" href="style.css" />
		<link rel="stylesheet" href="colours.css" />
		<title>hello</title>
	</head>
	<body>
		<div id="main">
			<h1><?= $_SERVER['DOCUMENT_ROOT'] ?></h1>
			<h1><?= $_SERVER['HTTP_HOST'] ?></h1>
			<h1><?= $_SERVER['REMOTE_ADDR'] ?></h1>
		</div>
	</body>
</html>
