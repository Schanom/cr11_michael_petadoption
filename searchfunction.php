<?php
require_once 'dbconnect.php';

 $search = $_POST['search'];
 $sql = "SELECT * From animals WHERE `name` LIKE '%$search%' OR age LIKE '%$search%'";
 $result = $conn-> query($sql);
 
 if($result->num_rows > 0){
     while($row = mysqli_fetch_array($result)){
         echo '<div class="card row col-3 d-flex justify-content-center mx-5" style="width: 18rem;">
         <img class="card-img-top" src=" '.$row["image"].'" alt="Card image cap">
         <div class="card-body">
             <h5 class="card-title">'.$row["name" ].'</h5>
             <p class="card-text"><b> Description:</b> <br> '.$row["description"].'</p>
             <p class="card-text"><b>Age:</b>  '.$row["age"].'</p>
             <p class="card-text"><b>Website: </b><a href='.$row["website"].'>Website Link</a></p>
         </div>
     </div>';
     } 
    } else{
        echo "No animal matching";
    };
$conn->close();
?>