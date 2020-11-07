<?php 
	require("connect.php");

	$id_cate=$_GET['id_cate'];

	$sql="SELECT *FROM product WHERE id_cate='$id_cate' AND active=0";
	$data=mysqli_query($conn, $sql);

	class Product{
		function Product($id, $name, $spec, $image_detail){
			$this->id=$id;
			$this->name=$name;
			$this->spec=$spec;
			$this->image_detail=$image_detail;
		}
	}

	class ImageDetail{
		function ImageDetail($id, $image){
			$this->id=$id;
			$this->image=$image;
		}
	}
	

	$arr_category=array();
	
	while ($row=mysqli_fetch_array($data)) {
		$id_image=$row['id'];

		$sql1="SELECT *FROM image_detail WHERE id_image='$id_image' AND active=0";
		$data1=mysqli_query($conn, $sql1);

		$arr_image_detail=array();
		while($row1=mysqli_fetch_array($data1)){
			array_push($arr_image_detail, new ImageDetail(
										$row1['id'],
										$row1['image']));
		}
		array_push($arr_category, new Product(
								$row['id'],
								$row['name_pro'],
								$row['spec'],
								$arr_image_detail));
	}
	echo json_encode($arr_category);
 ?>