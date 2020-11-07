<?php 
	require("connect.php");

	$class=$_POST['class'];
	$name=$_POST['name'];
	$phone=$_POST['phone'];
	$address=$_POST['address'];

	$sql="INSERT INTO customer VALUES(NULL, 0, '$class', '$name', '$phone', '$address')";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;
 ?>