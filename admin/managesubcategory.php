<?php
include_once "db_conn.php";


// Display Event list 
if(isset($_POST["show_subcategory"])){
    $event_id=$_POST['event_id'];
echo "<table class='table'>
<thead>
  <tr>
    <th scope='col'>#</th>
    <th scope='col'>Subcategory</th>
    <th scope='col'>Actions</th>
  </tr>
</thead>
<tbody>";
    $sql="SELECT * FROM `hand-forms` where `event-id`='{$event_id}'";
    $res=mysqli_query($db_conn,$sql);
    if(mysqli_num_rows($res)>0){
        while($row=mysqli_fetch_assoc($res)){
            echo "<tr>
              <th scope='row'>{$row['hf-id']}</th>
              <td>{$row['hf-name']}</td>
              <td><button data-id='{$row['hf-id']}' class='delete_sub_category btn btn-danger'>Delete</button></td>
            </tr>";

        }
    }
echo "</tbody>
</table>";
}



// Delete Sub-category

if(isset($_POST['delete_sub_category'])){
    $id=$_POST['id'];
    $sql="DELETE FROM `hand-forms` WHERE `hf-id`='{$id}'";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        echo "Sub-category has been deleted";
    }
    else{
        echo "Can't delete the sub-category";
    }

}


// Insert Subcategory

if(isset($_POST['new_sub'])){
    $id=$_POST['event_id'];
    $sub_category=$_POST['sub_category'];
    $sql="INSERT INTO `hand-forms`(`hf-name`,`event-id`) VALUES ('$sub_category','$id')";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        echo "New Event Added";
    }
    else{
        echo "Can't Add";
    }
}



?>
