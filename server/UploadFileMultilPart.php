<?php 
	$data = [];
	if(isset($_FILES['uploaded_file']) && is_array($_FILES['uploaded_file'])){
		$file=$_FILES['uploaded_file'];

		$file_path = "../image/product/";
		foreach ($file['tmp_name'] as $key => $value) {
			$path = $file_path . basename($file['name'][$key]);
			if(move_uploaded_file($file['tmp_name'][$key], $path)){
				$data['message'] = 'success';
				$data['name_images'][$key] = $file['name'][$key];
			} else{
				$data['message'] = 'fail';
			}
		}

		echo json_encode($data);
	}
	else{
		$data['message'] = 'fail';
		echo json_encode($data);
	}

 ?>