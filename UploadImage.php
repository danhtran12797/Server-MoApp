<?php 
	$to=$_POST['to'];
	$file_path="image/";
	if($to=="cate")
		$file_path=$file_path."categories/";
	else
		$file_path=$file_path."product/";
	$file_path=$file_path.basename($_FILES['upload_file']['name']);

	if(move_uploaded_file($_FILES['upload_file']['tmp_name'], $file_path)){
		echo $_FILES['upload_file']['name'];
	}else{
		echo "failed";
	}

 ?>