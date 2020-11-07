<?php 
	require("connect.php");

	$id_product=$_GET['id_product'];

	$sql="SELECT *FROM product WHERE id='$id_product'";
	$data=mysqli_query($conn, $sql);

	class Product{
		function Product($id, $name, $price, $quantity, $spec, $material, $unit, $thickness, $width, $length, $color, $adh_force, $elas, $charac, $bearing, $exp_date, $image_detail){
			$this->id=$id;
			$this->name=$name;
			$this->price=$price;
			$this->quantity=$quantity;
			$this->spec=$spec;
			$this->material=$material;
			$this->unit=$unit;
			$this->thickness=$thickness;
			$this->width=$width;
			$this->length=$length;
			$this->color=$color;
			$this->adh_force=$adh_force;
			$this->elas=$elas;
			$this->charac=$charac;
			$this->bearing=$bearing;
			$this->exp_date=$exp_date;
			$this->image_detail=$image_detail;
		}
	}

	class ImageDetail{
		function ImageDetail($id, $image){
			$this->id=$id;
			$this->image=$image;
		}
	}

	$row=mysqli_fetch_array($data);
	$id=$row['id'];

	$arr_image_detail=array();

	$sql="SELECT *FROM image_detail WHERE id_image='$id' AND active=0";
	$data=mysqli_query($conn, $sql);

	while($row1=mysqli_fetch_array($data)){
		array_push($arr_image_detail, new ImageDetail(
									$row1['id'],
									$row1['image']));
	}
	$pro=new Product(
					$row['id'],
					$row['name_pro'],
					$row['price'],
					$row['quantity'],
					$row['spec'],
					$row['material'],
					$row['unit'],
					$row['thickness'],
					$row['width'],
					$row['length'],
					$row['color'],
					$row['adh_force'],
					$row['elas'],
					$row['charac'],
					$row['bearing'],
					$row['exp_date'],
					$arr_image_detail);

	echo json_encode($pro);

 ?>