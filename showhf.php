<?php
include_once 'db_connection.php'; 
    if(isset($_POST['show1'])){
        $id=$_POST['eventid1'];
        $sql1="SELECT * FROM `events` where `id`= '{$id}'";
        $res1=mysqli_query($db_conn,$sql1);
        $row=mysqli_fetch_assoc($res1);
        echo "<h4>{$row['name']}</h4>
        <div style='clear:both;'></div>";
    $sql="SELECT * FROM `hand-forms` where `event-id`= '{$id}'";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        if(mysqli_num_rows($res)>0){
            echo "<div class='row'>";
        while($row=mysqli_fetch_assoc($res)){
            echo "<div class='col-lg-6'><div class='row'><input type='radio' id='hf{$row['hf-id']}' class='handforms col-1 my-2' name='forms' value='{$row['hf-name']}' data-hfname='{$row['hf-name']}' onclick='handRecordFunc();'><label class='px-3 col' for='hf{$row['hf-id']}'>{$row['hf-name']}</label></div></div>";
        }
        echo '</div>';
    }
    else{
        echo "No rows";
    }
    }
    else{
        echo "query failed";
    }
    }
    if(isset($_POST['show2'])){
        $id=$_POST['eventid1'];
        $sql1="SELECT * FROM `events` where `id`= '{$id}'";
        $res1=mysqli_query($db_conn,$sql1);
        $row=mysqli_fetch_assoc($res1);
        echo "<h4>{$row['name']}</h4>
        <div style='clear:both;'></div>";
    $sql="SELECT * FROM `hand-forms` where `event-id`= '{$id}'";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        if(mysqli_num_rows($res)>0){
            echo "<div class='row'>";
        while($row=mysqli_fetch_assoc($res)){
            echo "<div class='col-lg-6'><div class='row'><input type='checkbox' id='hf{$row['hf-id']}' class='handforms2 col-1 my-2' name='forms2[]' value='{$row['hf-name']}' data-hfname='{$row['hf-name']}'><label class='px-3 col' for='hf{$row['hf-id']}'>{$row['hf-name']}</label></div></div>";
        }
        echo '</div>';
    }
    else{
        echo "No rows";
    }
    }
    else{
        echo "query failed";
    }
    }
?>