<?php 
	require("connect.php");

	$id=$_POST['id_group_cate'];
	$name=$_POST['name_group_cate'];

	$sql="UPDATE group_cate SET name_group_cate='$name' WHERE id='$id'";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>