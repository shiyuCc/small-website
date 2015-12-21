<style type="text/css">
	.div_show{
		display:block;
	}

	.div_hide{
		display:none;
	}
</style>

<?php

	include('conn.php');

	function searchFood($link, $name){
		$queryIngredientID = "select ingredient_id from ingredients where name = '$name'";
		$resIngredientID = mysqli_query($link, $queryIngredientID);

		if(isset($resIngredientID) && (mysqli_num_rows($resIngredientID) == 0)){
			echo "no related recipe " . "<BR>";
		}
		else{
			$row = mysqli_fetch_row($resIngredientID);
			$ingredient_id = $row[0];
			$queryRecipeID = "select recipe_id from recipe_ingredients where ingredient_id = '$ingredient_id'";
			$resRecipeID = mysqli_query($link,$queryRecipeID);
			echo "search result for ingredient " . $name . ":<BR>";

			while($row1 = mysqli_fetch_array($resRecipeID, MYSQLI_NUM)){
				$recipe_id = $row1[0];
				$queryRecipe = "select name from recipe where recipe_id = '$recipe_id'";
				$resRecipe = mysqli_query($link, $queryRecipe);
				$row2 = mysqli_fetch_row($resRecipe);
				$recipe_name = $row2[0];				
				
				$queryRecipeDescription = "select description from recipe where name = '$recipe_name'";
				$resRecipeDescription = mysqli_query($link, $queryRecipeDescription);
				$row3 = mysqli_fetch_row($resRecipeDescription);
				$recipe_des = $row3[0];
				
				echo '<a href = "javascript:void(0)" onClick = "countHit($recipe_name)" >' . $recipe_name . '</a>' . '<BR>';

				echo '<div id = "div_text" class = "div_show">';
				echo $recipe_des;
				echo '</div>';				
			}
			echo "<BR>";
			echo "<A href='/kitchen.php'>Return to Homepage</A>";
		}
	}

	function countHit($recipe_name){
		$queryRecipeID = "select recipe_id from recipe where name = '$recipe_name'";
		$resRecipeID = mysqli_query($link,$queryRecipeID);
		if(isset($resRecipeID)){
			$row = mysqli_fetch_row($resRecipeID);
			$recipe_id = $row[0];
			$queryHit = "select num from hits where recipe_id = '$recipe_id'";
			$resHit = mysqli_query($link, $queryHit);
			$row1 = mysqli_fetch_row($resHit);
			$hitNum = $row1[0] + 1;
			$updateHit = "update hits set num = '$hitNum' where recipe_id = '$recipe_id'";
			$updateTable = mysqli_query($link, $updateHit);
		}
	}

	if(isset($_POST["food"])){
		$name = $_POST["food"];
		searchFood($link, $name);	
	}	
?>