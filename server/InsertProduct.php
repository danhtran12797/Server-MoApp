<?php 
	require("connect.php");

	$id_cate=$_POST['id_cate'];
	$name_pro=$_POST['name_pro'];
	$price=$_POST['price'];
	$quantity=$_POST['quantity'];
	$spec=$_POST['spec'];
	$material=$_POST['material'];
	$thickness=$_POST['thickness'];
	$width=$_POST['width'];
	$length=$_POST['length'];
	$color=$_POST['color'];
	$adh_force=$_POST['adh_force'];
	$elas=$_POST['elas'];
	$charac=$_POST['charac'];
	$unit=$_POST['unit'];
	$bearing=$_POST['bearing'];
	$exp_date=$_POST['exp_date'];
	$json=$_POST['json_images'];

	$sql="INSERT INTO product VALUES(NULL, '$id_cate', 0, '$name_pro', '$price', '$quantity', '$spec',
		'$material', '$thickness', '$width', '$length', '$color', '$adh_force', '$elas', '$charac', '$unit', '$bearing', '$exp_date')";

	$data=mysqli_query($conn, $sql);

	if($data){
		$last_id=mysqli_insert_id($conn);
		$data=json_decode($json,true);
		foreach($data as $value){
			$image=$value['image'];

			$sql="INSERT INTO image_detail VALUES(NULL, '$last_id', 0, '$image')";
			$result=mysqli_query($conn, $sql);
		}
		if($result){
			echo "success";
		}else{
			echo $conn->error;
		}
	}
	else
		echo $conn->error;

 ?>