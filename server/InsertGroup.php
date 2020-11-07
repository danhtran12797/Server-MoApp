<?php 
	require("connect.php");

	$name=$_POST['name_group_cate'];

	$sql="INSERT INTO group_cate VALUES(NULL, 0, '$name')";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>