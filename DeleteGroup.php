<?php 
	require("connect.php");

	$id=$_POST['id_group_cate'];

	$sql="UPDATE group_cate SET active=1 WHERE id='$id'";
	$data=mysqli_query($conn, $sql);

	$sql="UPDATE category SET active=1 WHERE id_group_cate='$id'";
	$data=mysqli_query($conn, $sql);	

	$sql="SELECT id FROM category WHERE id_group_cate='$id'";
	$data=mysqli_query($conn, $sql);

	$num=mysqli_num_rows($data);
	if($num>0){
		while($row=mysqli_fetch_array($data)) {
			$id=$row['id'];
			$sql1="UPDATE product SET active=1 WHERE id_cate='$id'";
			$data1=mysqli_query($conn, $sql1);
		}

		if($data1)
			echo "success";
		else
			echo $conn->error;
	}else{
		if($data)
			echo "success";
		else
			echo $conn->error;
	}

 ?>