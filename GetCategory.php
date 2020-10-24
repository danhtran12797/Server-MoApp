<?php 
	require("connect.php");

	$id_cate=$_GET['id_cate'];

	$sql="SELECT *FROM product WHERE id_cate='$id_cate' AND active=0";
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