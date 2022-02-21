<?php
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
        <h4>Add new event</h4>
        <form>
            <div class="mb-3">
                <label for="new_event" class="form-label">Event Name</label>
                <input type="text" class="form-control" id="new_event" name="new_event">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="text" class="form-control" id="price">
            </div>
            <button type="button" class="btn btn-primary" id="new_event_button">Insert</button>
        </form>
        <h5 id="add_msg"><h5>
        <!-- Displaying list of events  -->
    <h4 class="mt-5">List of Events</h4>
    <div id="events_div"></div>
    

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>
<script src="../jquery.js"></script>
<script>
    $(document).ready(function(){
        function displayFunc(){
        $.ajax({
            url: "managedashboard.php",
            type: "POST",
            data:{
                show_event:true
            },
            success:function(data){
                $("#events_div").html(data)
            }
        })
    }
    displayFunc();

    $(document).on("click","#new_event_button",function(){
        event_name=$("#new_event").val();
        price=$("#price").val();
        if(event_name!="" || price!=""){
            $.ajax({
                url: "managedashboard.php",
                type: "POST",
                data: {
                    new_event: true,
                    name: event_name,
                    price: price
                },
                success:function(data){
                    $("#add_msg").html(data);
                    displayFunc();
                }
            })
        }
    })

    // Show Edit Modal
                $(document).on("click",".edit_event",function(e){
                editId=e.target.dataset.id;
                $.ajax({
                    url: "managedashboard.php",
                    type: "POST",
                    data:{
                        show_modal: true,
                        id:editId
                    },
                    success:function(data){
                        $("#edit_modal_div").html(data);
                        $("#editModal").modal("toggle");
                    }
                })
            })


    //Edit Event

    $(document).on("click","#edit_button",function(){
        $("#editModal").modal("hide");
        edited_id=$("#edit_id").val();
        edited_name=$("#edit_name").val();
        edited_price=$("#edit_price").val();
        $.ajax({
            url: "managedashboard.php",
            type: "POST",
            data: {
                edit_event: true,
                id: edited_id,
                name: edited_name,
                price: edited_price
            },
            success:function(data){
                // $("#add_msg").html(data);
                    displayFunc();
            }
        })
    })


    //Delete event

    $(document).on("click",".delete_event",function(e){
                deleteId=e.target.dataset.id;
                $.ajax({
                    url: "managedashboard.php",
                    type: "POST",
                    data:{
                        delete_event: true,
                        id:deleteId
                    },
                    success:function(data){
                        displayFunc();
                    }
                })
            })
})
</script>
</html>



<?php

}
else{
    header("Location: index.php");
}