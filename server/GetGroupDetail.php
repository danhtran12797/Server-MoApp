<?php 
	require("connect.php");

	$id_group=$_GET['id_group'];

	$sql="SELECT *FROM category WHERE id_group_cate='$id_group' AND active=0";
	$data=mysqli_query($conn, $sql);

	class Categories{
		function Categories($id, $name, $image){
			$this->id=$id;
			$this->name=$name;
			$this->image=$image;
		}
	}

	$arr=array();
	while($row=mysqli_fetch_array($data)){
		array_push($arr, new Categories(
								$row['id'],
								$row['name_cate'],
								$row['image_cate']));
	}

	echo json_encode($arr);

 ?>