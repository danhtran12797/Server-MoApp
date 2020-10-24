<?php 
	require("connect.php");

	$id=$_POST['id_pro'];

	$sql="UPDATE product SET active=1 WHERE id='$id'";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>