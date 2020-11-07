<?php 
	require("connect.php");
	$sql="SELECT *FROM group_cate WHERE active=0";
	$data=mysqli_query($conn, $sql);

	class Group{
		function Group($id, $name, $categories){
			$this->id=$id;
			$this->name=$name;
			$this->categories=$categories;
		}
	}

	class Categories{
		function Categories($id, $name, $image){
			$this->id=$id;
			$this->name=$name;
			$this->image=$image;
		}
	}

	$array_group=array();
	while($row_group=mysqli_fetch_array($data)){
		$id_group=$row_group['id'];

		$sql1="SELECT *FROM category WHERE id_group_cate='$id_group' AND active=0 LIMIT 6";
		$data1=mysqli_query($conn, $sql1);

		$array_category=array();
		while($row_categories=mysqli_fetch_array($data1)){
			array_push($array_category, new Categories(
									$row_categories['id'],
									$row_categories['name_cate'],
									$row_categories['image_cate']));
		}
		array_push($array_group, new Group(
							$row_group['id'],
							$row_group['name_group_cate'],
							$array_category));
	}

	echo json_encode($array_group);

 ?>