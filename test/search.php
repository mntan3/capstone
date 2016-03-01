<html>
	<head>
		<title>Search Engine in PHP</title>
	</head>
	
	<body>
		<form action="search.php" method="get">
			Search engine:<input type="text" name="value" placeholder="Search Anything here">
			<input type="submit" name="search" value="Search Now">
		</form>
		<hr>
		<?php
			$servername = "localhost";
			$username = "root";
			$password = "8GJ[fe@xKW)n";

			try {
				$conn = new PDO("mysql:host=$servername;dbname=my_db", $username, $password);
				// set the PDO error mode to exception
				$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				 //echo "Connected successfully";
			}
			catch(PDOException $e)
			{
				echo "Connection failed: " . $e->getMessage();
			}

			if(isset($_GET['search'])) {
				
				$search_value = $_GET['value'];
				//echo "<br>You searched for: $search_value";
				$query = "select * from sites where site_keywords like '%$search_value%'";
				//echo "<br>Your query is: $query";

				//$search

				foreach($conn->query($query) as $row){
					$title = $row['site_title'];
					$link = $row['site_link'];
					$desc = $row['site_desc'];

					echo "<h1>$title</h1><a href='$link'>$link</a><p>$desc</p>";
				}
			}
		?>
	</body>
</html>
