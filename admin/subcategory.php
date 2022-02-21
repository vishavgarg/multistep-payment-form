<?php
include_once "db_conn.php";
session_start();
if(isset($_SESSION['admin'])){
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Admin</title>
</head>

<body>

    <?php include_once "header.php"; ?>
    <div id="edit_modal_div"></div>

    <div class="container my-3">
        <h4>Add new sub-category</h4>
        <form>
        <div class="events_div">
                <div class='dropdown mb-3'>
                    <button class='btn btn-light dropdown-toggle' type='button' id='dropdownMenuButton1'
                        data-bs-toggle='dropdown' aria-expanded='false'>
                        Choose Event Name
                    </button>
                    <ul class='dropdown-menu' aria-labelledby='dropdownMenuButton1'>
                        <?php
                        $sql="SELECT * FROM `events`";
                        $res=mysqli_query($db_conn,$sql);
                        if(mysqli_num_rows($res)>0){
                        while($row=mysqli_fetch_assoc($res)){
                        echo "<li><a class='event-for-add dropdown-item' data-id='{$row['id']}'>{$row['name']}</a></li>";
                        }
                        }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="mb-3">
                <label for="new_event" class="form-label">Sub-category Name</label>
                <input type="text" class="form-control" id="new_sub" name="new_event">
            </div>
            <button type="button" class="btn btn-primary" id="new_sub_button">Insert</button>
        </form>
        <h5 id="add_msg">
            <h5>
                <!-- Displaying list of events  -->
                <h4 class="mt-5">See all sub-categories here</h4>
                <div class="events_div">
                    <div class='dropdown mb-3'>
                        <button class='btn btn-light dropdown-toggle' type='button' id='dropdownMenuButton1'
                            data-bs-toggle='dropdown' aria-expanded='false'>
                            Choose Event Name
                        </button>
                        <ul class='dropdown-menu' aria-labelledby='dropdownMenuButton1'>
                            <?php
                            $sql="SELECT * FROM `events`";
                            $res=mysqli_query($db_conn,$sql);
                            if(mysqli_num_rows($res)>0){
                            while($row=mysqli_fetch_assoc($res)){
                            echo "<li><a class='event-to-show dropdown-item' data-id='{$row['id']}'>{$row['name']}</a></li>";
                            }
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div id="show_subcategory_div"></div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>
<script src="../jquery.js"></script>
<script>
$(document).ready(function() {

    $(document).on("click",".event-to-show",function(e){
        show_id=e.target.dataset.id;
        $.ajax({
            url: "managesubcategory.php",
            type: "POST",
            data: {
                show_subcategory: true,
                event_id:show_id
            },
            success: function(data) {
                $("#show_subcategory_div").html(data);
            }
        })
    })


       //Delete Subcategory
       
       $(document).on("click", ".delete_sub_category", function(e) {
        deleteId = e.target.dataset.id;
        $.ajax({
            url: "managesubcategory.php",
            type: "POST",
            data: {
                delete_sub_category: true,
                id: deleteId
            },
            success: function(data) {
                $("#add_msg").html(data);
            }
        })
    })
    
        


    $(document).on("click",".event-for-add",function(e1){
        event_id=e1.target.dataset.id;
    $(document).on("click", "#new_sub_button", function() {
        sub_category = $("#new_sub").val();
        if (sub_category != "") {
            $.ajax({
                url: "managesubcategory.php",
                type: "POST",
                data: {
                    new_sub: true,
                    event_id: event_id,
                    sub_category: sub_category
                },
                success: function(data) {
                    $("#add_msg").html(data);
                }
            })
        }
    })
})

//     // Show Edit Modal
//     $(document).on("click", ".edit_event", function(e) {
//         editId = e.target.dataset.id;
//         $.ajax({
//             url: "managedashboard.php",
//             type: "POST",
//             data: {
//                 show_modal: true,
//                 id: editId
//             },
//             success: function(data) {
//                 $("#edit_modal_div").html(data);
//                 $("#editModal").modal("toggle");
//             }
//         })
//     })


//     //Edit Event

//     $(document).on("click", "#edit_button", function() {
//         $("#editModal").modal("hide");
//         edited_id = $("#edit_id").val();
//         edited_name = $("#edit_name").val();
//         edited_price = $("#edit_price").val();
//         $.ajax({
//             url: "managedashboard.php",
//             type: "POST",
//             data: {
//                 edit_event: true,
//                 id: edited_id,
//                 name: edited_name,
//                 price: edited_price
//             },
//             success: function(data) {
//                 // $("#add_msg").html(data);
//                 displayFunc();
//             }
//         })
//     })


 
})
</script>

</html>



<?php

}
else{
    header("Location: index.php");
}