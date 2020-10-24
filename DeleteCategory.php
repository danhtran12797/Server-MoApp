<?php 
	require("connect.php");

	$id=$_POST['id_cate'];

	$sql="UPDATE category SET active=1 WHERE id='$id'";
	$data=mysqli_query($conn, $sql);
	$sql="UPDATE product SET active=1 WHERE id_cate='$id'";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;
?>