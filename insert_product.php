<?php 
	require("connect.php");

	$id_cate=1;
	$name_pro="Băng keo $id_cate";
	$image_pro="bangkeo$id_cate.png";
	$price=5000;
	$quantity=10;
	$detail='Qui cách: 4F8* 100Y (90 mét)
Đơn vị tính: Cuộn
Chất liệu: OPP
Chiều rộng: 10- 288mm
Chiều dài:  35-1000m
Độ dày: 35- 65mic
Màu sắc: Trong sutts, nâu, màu
Chịu lực: >=24N/10mm
Lực bám dính:>=4N/100mm
Độ  giãn: 162%
Đặc điểm: Không thấm nức
Hạn sử dụng: 12-2030';

	$i=1;
	$j=1;
	for($i=1;$i<=45;$i++){
		for ($j=1; $j <=6 ; $j++) { 
			$sql="INSERT INTO `product`(`id_cate`, `name_pro`, `image_pro`, `price`, `quantity`, `detail`) VALUES ('$i', 'Băng keo$i $j', 'bangkeo$i-$j.png','$price', '$quantity', '$detail')";
			$result=mysqli_query($conn, $sql);
			if($result){
				echo "success";
			}else{
				echo "failed";
			}
		}

	}
 ?>