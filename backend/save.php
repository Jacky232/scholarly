<?php
include 'config.php';

if(count($_POST)>0){
	if($_POST['type']==1){
		$name             =  $_POST['name'];
        $mobile           =  $_POST['mobile'];
        $date_birth       =  $_POST['date_birth'];
        $address          =  $_POST['address'];
        $father           =  $_POST['father'];
        $district         =  $_POST['district'];
        $gender           =  $_POST['gender'];
        $state            =  $_POST['state'];

		$sql = "INSERT INTO `applicants_form` (`id`, `name`, `mobile`, `date_birth`,`address`,`father`,`district`,`gender`,`state`)
		VALUES ('$name','$mobile','$date_birth','$address','$father','$district','$gender','$state')";
		if (mysqli_query($conn, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		mysqli_close($conn);
	}
}
if(count($_POST)>0){
	if($_POST['type']==2){
		$id=$_POST['id'];
		$name             =  $_POST['name'];
        $mobile           =  $_POST['mobile'];
        $date_birth       =  $_POST['date_birth'];
        $address          =  $_POST['address'];
        $father           =  $_POST['father'];
        $district         =  $_POST['district'];
        $gender           =  $_POST['gender'];
        $state            =  $_POST['state'];
		$sql = "UPDATE `applicants_form` SET `name`='$name',`mobile`='$mobile',`date_birth`='$date_birth',`address`='$address',`father`='$father',`district`='$district',`gender`='$gender',`state`='$state' WHERE id=$id";
		if (mysqli_query($conn, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		mysqli_close($conn);
	}
}
if(count($_POST)>0){
	if($_POST['type']==3){
		$id=$_POST['id'];
		$sql = "DELETE FROM `applicants_form` WHERE id=$id ";
		if (mysqli_query($conn, $sql)) {
			echo $id;
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		mysqli_close($conn);
	}
}
if(count($_POST)>0){
	if($_POST['type']==4){
		$id=$_POST['id'];
		$sql = "DELETE FROM applicants_form WHERE id in ($id)";
		if (mysqli_query($conn, $sql)) {
			echo $id;
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		mysqli_close($conn);
	}
}

?>