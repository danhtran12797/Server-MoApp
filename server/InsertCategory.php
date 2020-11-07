<?php 
	require("connect.php");

	$id_group=$_POST['id_group'];
	$name=$_POST['name_cate'];
	$image=$_POST['image_cate'];

	$sql="INSERT INTO category VALUES(NULL, '$id_group', 0, '$name', '$image')";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>