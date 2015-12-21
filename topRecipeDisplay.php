<?php
	include("conn.php");

	$queryRecipeID = "select recipe_id from hits order by num desc";
	$resRecipeID = mysqli_query($link, $queryRecipeID);

	if(isset($resRecipeID)){
		echo "Top 10 recipes:" . "<BR>";
		echo "<BR>";
		while($row1 = mysqli_fetch_array($resRecipeID, MYSQLI_NUM)){
			$recipe_id = $row1[0];
			$queryRecipe = "select name from recipe where recipe_id = '$recipe_id'";
			$resRecipe = mysqli_query($link, $queryRecipe);
			$row2 = mysqli_fetch_row($resRecipe);
			$recipe_name = $row2[0];

			echo $recipe_name . "<BR>";
		}
		echo "<BR>";
		echo "<A href='/kitchen.php'>Return to Homepage</A>";
	}
?>