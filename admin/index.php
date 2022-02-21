<?php
include_once "db_conn.php";
$alert=false;
if($_SERVER['REQUEST_METHOD']==='POST'){
    $user=strip_tags($_POST['username']);
    $pass=strip_tags($_POST['password']);
    $sql="SELECT * from `admin_access` where `username`='{$user}'";
    $res=mysqli_query($db_conn,$sql);
    if($res){
        if(mysqli_num_rows($res)>0){
            $row=mysqli_fetch_assoc($res);
            if($pass===$row['pass']){
                session_start();
                $_SESSION['admin']=$user;
                header("Location: dashboard.php");
            }
            else{
                $alert=true;
                $msg="Your password is incorrect";
            }
        }
        else{
            $alert=true;
            $msg="Please try with the correct username";
        }
    }
    else{
        $alert=true;
        $msg="Sorry, Could not process, there's some error.";
    }
}

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
    <?php 
    if($alert===true){
    echo "<div class='alert alert-warning alert-dismissible fade show' role='alert'>
    {$msg}
    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
    </div>";
    }
    ?>
    <div class="container my-5">
        <form method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>

</html>