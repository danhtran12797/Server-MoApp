<?php 
	require("connect.php");

	$id_product=$_GET['id_product'];

	$sql="SELECT *FROM product WHERE id='$id_product'";
	$data=mysqli_query($conn, $sql);

	class Product{
		function Product($id, $name, $image, $price, $quantity, $spec, $material, $thickness, $width, $length, $color, $adh_force, $elas, $charac, $unit, $bearing, $exp_date){
			$this->id=$id;
			$this->name=$name;
			$this->image=$image;
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
		}
	}

	$row=mysqli_fetch_array($data);
	$pro=new Product(
					$row['id'],
					$row['name_pro'],
					$row['image_pro'],
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
					$row['exp_date']);

	echo json_encode($pro);

 ?>