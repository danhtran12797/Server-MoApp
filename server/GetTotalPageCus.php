<?php 
	require("connect.php");

	$search_name=$_GET['search_name'];

	$sql="SELECT COUNT(id) as total FROM customer WHERE lower(name_cus) LIKE '%$search_name%'";
	$data=mysqli_query($conn, $sql);
	$row = mysqli_fetch_array($data);
	$total_records = $row['total'];

	$limit=10;
	$total_page=ceil($total_records/$limit);
	echo $total_page;
 ?>