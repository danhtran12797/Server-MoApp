<?php 
	require("connect.php");

	$search_name=$_GET['search_name'];
	$page=$_GET['page'];
	$limit=10;
	$start=($page-1)*$limit;

	$sql="SELECT *FROM customer WHERE active=0 AND lower(name_cus) LIKE '%$search_name%' LIMIT $start , $limit";
	$data=mysqli_query($conn, $sql);

	class Customer{
		function Customer($id, $class, $name, $phone, $address){
			$this->id=$id;
			$this->class=$class;
			$this->name=$name;
			$this->phone=$phone;
			$this->address=$address;
		}
	}

	$arr=array();
	while ($row=mysqli_fetch_array($data)) {
		array_push($arr, new Customer(
								$row['id'],
								$row['class'],
								$row['name_cus'],
								$row['phone'],
								$row['address']));
	}
	echo json_encode($arr);
 ?>