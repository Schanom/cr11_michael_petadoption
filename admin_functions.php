<?php 

require_once 'dbconnect.php';
if (isset($_GET['delete'])){
    $id = $_GET['delete'];
    $conn->query("DELETE FROM users WHERE userId=$id") or die($conn->error());
    unset($_SESSION['message']);
    $_SESSION['message'] = "Record has been deleted";
    $_SESSION['msg_type'] = "danger";
}

$update = false;

if (isset($_GET['edit'])){
    $udpate = true;
    $id = $_GET['edit'];
     $sql = "SELECT * FROM users WHERE userId=$id";
    $res = mysqli_query($conn, $sql);
    if($res->num_rows){
        $row = $res->fetch_array();
        $userName = $row['userName'];
        $userEmail = $row['userEmail'];
        $status = $row['status'];
    }
   
}

if (isset($_POST['update'])){
    $update=false;
        $id = $_POST['id'];
        $userName = $_POST['userName'];
        $userEmail = $_POST['userEmail'];
        $status = $_POST['status'];
        $sql = "UPDATE users SET userName='$userName', userEmail='$userEmail', `status`='$status' WHERE userId=$id" ;

    $res = mysqli_query($conn, $sql);
    
    header('location: admin.php');
}

//update shit

if (isset($_GET['deleteone'])){
    $id = $_GET['deleteone'];
    $conn->query("DELETE FROM animals WHERE id=$id") or die($conn->error());
    unset($_SESSION['message']);
    $_SESSION['message'] = "Record has been deleted";
    $_SESSION['msg_type'] = "danger";
}

$update = false;

if (isset($_GET['editone'])){
    $udpate = true;
    $id = $_GET['editone'];
    $sql = "SELECT * FROM animals WHERE id=$id";
    $res = mysqli_query($conn, $sql);
    if($res->num_rows){
        $row = $res->fetch_array();
        $id = $row['id'];
        $name = $row['name'];
        $age = $row['age'];
        $image = $row['image'];
        $hobbies = $row['hobbies'];
        $description = $row['description'];
        $adoption = $row['adoption_ready_date'];
        $zip = $row['zip'];
        $city = $row['city'];
        $address = $row['address'];
        $website = $row['website'];
        $type = $row['type'];
    }
}

if (isset($_POST['updateone'])){
    $update=false;
    $id = $_POST['id'];
    $name = $_POST['name'];
    $age = $_POST['age'];
    $image = $_POST['image'];
    $hobbies = $_POST['hobbies'];
    $description = $_POST['description'];
    $zip = $_POST['zip'];
    $city = $_POST['city'];
    $address = $_POST['address'];
    $website = $_POST['website'];
    $adoption = $_POST['adoption_ready_date'];
    $type = $_POST['type'];
    $sql = "UPDATE animals SET `name`='$name', age='$age', `image`='$image', hobbies='$hobbies', `description`='$description', adoption_ready_date='$adoption', `zip`='$zip', city='$city', `address`='$address', `website`='$website', `type`='$type' WHERE id=$id";

$result = mysqli_query($conn, $sql) or die($conn->error());

header('location: admin.php');
}
//creating a new animal 
$create = false;

if (isset($_GET['create'])){
    $create = true;
}

if (isset($_POST['createone'])){
    $create=true;
    $id = $_POST['id'];
    $name = $_POST['name'];
    $age = $_POST['age'];
    $image = $_POST['image'];
    $hobbies = $_POST['hobbies'];
    $description = $_POST['description'];
    $zip = $_POST['zip'];
    $city = $_POST['city'];
    $address = $_POST['address'];
    $website = $_POST['website'];
    $adoption = $_POST['adoption_ready_date'];
    $type = $_POST['type'];
    $sql = "INSERT INTO `animals` (`name`, `age`, `image`, `description`,`zip`, `city`, `address`, `hobbies`, `website`, `adoption_ready_date`, `type`) VALUES ('$name', '$age', '$image', '$description', '$zip', '$city', '$address', '$hobbies', '$website', '$adoption', '$type')";

$result = mysqli_query($conn, $sql);

header('location: admin.php');
}
?>