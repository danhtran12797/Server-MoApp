<?php 
	require("connect.php");
	
	$search_name=$_GET['search_name'];
	$page=$_GET['page'];
	$view_type=$_GET['view_type'];
	$limit=10;

	$start=($page-1)*$limit;

	$result_view=$view_type==1?'price ASC':'price DESC';

	// SELECT * FROM `product` WHERE active=0 AND lower(name_pro) LIKE 'Băng keo1%' ORDER BY price ASC LIMIT 10

	// $sql='SELECT *FROM product WHERE active=0 AND lower(name_pro) LIKE "'.$search_name.'%" ORDER BY '.$result_view.' LIMIT '.$start.', '.$limit;

	if($view_type==1){
		$sql="SELECT *FROM product WHERE active=0 AND lower(name_pro) LIKE '%$search_name%' ORDER BY price ASC LIMIT $start , $limit";
	}else{
		$sql="SELECT *FROM product WHERE active=0 AND lower(name_pro) LIKE '%$search_name%' ORDER BY price DESC LIMIT $start , $limit";
	}

	$data=mysqli_query($conn, $sql);

	class Product{
		function Product($id, $name, $image, $spec){
			$this->id=$id;
			$this->name=$name;
			$this->image=$image;
			$this->spec=$spec;
		}
	}

	$arr_category=array();
	while ($row=mysqli_fetch_array($data)) {
		array_push($arr_category, new Product(
								$row['id'],
								$row['name_pro'],
								$row['image_pro'],
								$row['spec']));
	}

	echo json_encode($arr_category);
 ?>