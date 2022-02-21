<?php
include_once "db_conn.php";

// Display Event list 
if(isset($_POST["show_event"])){
echo "<table class='table'>
<thead>
  <tr>
    <th scope='col'>#</th>
    <th scope='col'>Event Name</th>
    <th scope='col'>Price</th>
    <th scope='col'>Actions</th>
  </tr>
</thead>
<tbody>";
    $sql="SELECT * FROM `other_options`";
    $res=mysqli_query($db_conn,$sql);
    if(mysqli_num_rows($res)>0){
        while($row=mysqli_fetch_assoc($res)){
            echo "<tr>
              <th scope='row'>{$row['o_id']}</th>
              <td>{$row['o_name']}</td>
              <td>{$row['o_price']}</td>
              <td><button data-id='{$row['o_id']}' class='edit_event btn btn-primary mx-1'>Edit</button><button data-id='{$row['o_id']}' class='delete_event btn btn-danger'>Delete</button></td>
            </tr>";

        }
    }
echo "</tbody>
</table>";
}

// Insert New Event 

if(isset($_POST['new_event'])){
    $name=$_POST['name'];
    $price=$_POST['price'];
    $sql="INSERT INTO `other_options`(`o_name`,`o_price`) VALUES ('$name','$price')";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        echo "New Event Added";
    }
    else{
        echo "Can't Add";
    }
}


//Show Modal

if(isset($_POST['show_modal'])){
    $id=$_POST['id'];
    $sql="SELECT * FROM `other_options` where `o_id`='{$id}'";
    $res=mysqli_query($db_conn,$sql);
    $row=mysqli_fetch_assoc($res);
    echo "<div class='modal fade' id='editModal' tabindex='-1' aria-labelledby='exampleModalLabel' aria-hidden='true'>
    <div class='modal-dialog'>
      <div class='modal-content'>
        <div class='modal-header'>
          <h5 class='modal-title' id='exampleModalLabel'>Edit Event</h5>
          <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
        </div>
        <div class='modal-body'>
        <form>
            <div>
                <input type='hidden' class='form-control' id='edit_id' value='{$id}';
            </div>
            <div class='mb-3'>
                <label for='new_event' class='form-label'>Event Name</label>
                <input type='text' class='form-control' id='edit_name' name='edit_name' value='{$row['o_name']}'>
            </div>
            <div class='mb-3'>
                <label for='price' class='form-label'>Price</label>
                <input type='text' class='form-control' id='edit_price' value='{$row['o_price']}'>
            </div>
        </form>
        </div>
        <div class='modal-footer'>
          <button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>Close</button>
          <button type='button' class='btn btn-primary' id='edit_button'>Save changes</button>
        </div>
      </div>
    </div>
  </div>";
}


// Edit Modal 

if(isset($_POST['edit_event'])){
    $id=$_POST['id'];
    $name=$_POST['name'];
    $price=$_POST['price'];
    $sql="UPDATE `other_options` SET `o_name`='{$name}',`o_price`='{$price}' WHERE `o_id`='{$id}'";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        echo "Event has been updated";
    }
    else{
        echo "Can't update the event";
    }

}


// Delete Event 

if(isset($_POST['delete_event'])){
    $id=$_POST['id'];
    $sql="DELETE FROM `other_options` WHERE `o_id`='{$id}'";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        echo "Event has been deleted";
    }
    else{
        echo "Can't delete the event";
    }

}

?>
 <!--  -->