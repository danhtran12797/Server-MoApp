<?php 
	require("connect.php");

	$id_pro=$_POST['id_pro'];
	$json=$_POST['json_images'];

	$data=json_decode($json,true);
	foreach($data as $value){
		$image=$value['image'];

		$sql="INSERT INTO image_detail VALUES(NULL, '$id_pro', 0, '$image')";
		$result=mysqli_query($conn, $sql);
	}
	
	if($result){
		echo "success";
	}else{
		echo $conn->error;
	}

 ?>