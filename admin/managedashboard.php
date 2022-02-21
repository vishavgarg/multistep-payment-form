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
    $sql="SELECT * FROM `events`";
    $res=mysqli_query($db_conn,$sql);
    if(mysqli_num_rows($res)>0){
        while($row=mysqli_fetch_assoc($res)){
            echo "<tr>
              <th scope='row'>{$row['id']}</th>
              <td>{$row['name']}</td>
              <td>{$row['price']}</td>
              <td><button data-id='{$row['id']}' class='edit_event btn btn-primary mx-1'>Edit</button><button data-id='{$row['id']}' class='delete_event btn btn-danger'>Delete</button></td>
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
    $sql="INSERT INTO `events`(`name`,`price`) VALUES ('$name','$price')";
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
    $sql="SELECT * FROM `events` where `id`='{$id}'";
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
                <input type='text' class='form-control' id='edit_name' name='edit_name' value='{$row['name']}'>
            </div>
            <div class='mb-3'>
                <label for='price' class='form-label'>Price</label>
                <input type='text' class='form-control' id='edit_price' value='{$row['price']}'>
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
    $sql="UPDATE `events` SET `name`='{$name}',`price`='{$price}' WHERE `id`='{$id}'";
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
    $sql="DELETE FROM `events` WHERE `id`='{$id}'";
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