<?php 
	require("connect.php");

	$id=$_POST['id_cate'];
	$name=$_POST['name_cate'];
	$image=$_POST['image_cate'];

	$sql="UPDATE category SET name_cate='$name', image_cate='$image' WHERE id='$id'";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>