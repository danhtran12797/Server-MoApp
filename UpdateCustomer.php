<?php 
	require("connect.php");

	$id=$_POST['id'];
	$name=$_POST['name'];
	$class=$_POST['class'];
	$phone=$_POST['phone'];
	$address=$_POST['address'];

	$sql="UPDATE customer SET name_cus='$name', class='$class', phone='$phone', address='$address' WHERE id='$id'";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>