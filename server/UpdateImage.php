<?php 
	require("connect.php");

	$id=$_POST['id'];
	$image=$_POST['image'];

	if(!empty($image))
		$sql="UPDATE image_detail SET image='$image' WHERE id='$id'";
	else
		$sql="UPDATE image_detail SET active=1 WHERE id='$id'";
	
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>