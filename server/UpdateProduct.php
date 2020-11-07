<?php 
	require("connect.php");

	$id=$_POST['id_pro'];
	$name=$_POST['name_pro'];
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

	$sql="UPDATE product SET name_pro='$name', price='$price', quantity='$quantity', spec='$spec', 
	material='$material', thickness='$thickness', width='$width', length='$length', color='$color', 
	adh_force='$adh_force', elas='$elas', charac='$charac', unit='$unit', bearing='$bearing', exp_date='$exp_date' WHERE id='$id'";
	$data=mysqli_query($conn, $sql);

	if($data)
		echo "success";
	else
		echo $conn->error;

 ?>