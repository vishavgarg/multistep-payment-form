<?php
include_once "db_connection.php";
require_once 'config1.php'; 
include 'dbConnect.php';
if($_SERVER['REQUEST_METHOD'] === 'POST'){
    $fname=strip_tags($_POST['fname']);
    $lname=strip_tags($_POST['lname']);
    $guardian=strip_tags($_POST['guardian']);
    $gender=$_POST['gender'];
    $email=strip_tags($_POST['email']);
    $address=strip_tags($_POST['address']);
    $address2=strip_tags($_POST['address2']);
    $address3=strip_tags($_POST['address3']);
    $address4=strip_tags($_POST['address4']);
    $address5=strip_tags($_POST['address5']);
    $address6=strip_tags($_POST['address6']);
    $personal_address_array=array($address,$address2,$address3,$address4,$address5,$address6);
    $personal_address=implode(",",$personal_address_array);
    $dob=strip_tags($_POST['dob']);
    $e_year=strip_tags($_POST['experience-year']);
    $e_month=strip_tags($_POST['experience-month']);
    $experience_array=array($e_year,$e_month);
    $experience=implode(".",$experience_array);
    $f_timer=$_POST['first-timer'];
    $school=strip_tags($_POST['school']);
    $instructor=strip_tags($_POST['instructor']);
    $s_address=strip_tags($_POST['s_address']);
    $s_address2=strip_tags($_POST['s_address2']);
    $s_address3=strip_tags($_POST['s_address3']);
    $s_address4=strip_tags($_POST['s_address4']);
    $s_address5=strip_tags($_POST['s_address5']);
    $s_address6=strip_tags($_POST['s_address6']);
    $school_address_array=array($s_address,$s_address2,$s_address3,$s_address4,$s_address5,$s_address6);
    $school_address=implode(",",$school_address_array);
    $s_email=strip_tags($_POST['schoolemail']);
    $s_phone=strip_tags($_POST['schoolphone']);
    $multiple_event_check=($_POST['multipleEvents']);
    $event_ids=$_POST['event_ids'];
    $event_id_array=explode(",",$event_ids);
    $event_names=$_POST['event_names'];
    $hfnames=$_POST['hfnames'];
    $event_amount=$_POST['event_amount'];
    $first_event_ids=$_POST['first_event_array'];
    $first_event_array=explode(",",$first_event_ids);
    $other_event_ids=$_POST['other_event_array'];
    $other_event_array=explode(",",$other_event_ids);
    $sql="INSERT INTO `registration` (`first_name`, `last_name`, `guardian_name`, `gender`, `email`, `address`, `dob`, `experience`, `first_timer`, `school_name`, `instructor_name`, `school_address`, `school_email`, `school_phone`, `no_of_events`, `event_ids`, `event_names`, `event_subject`, `total_amount`, `date_time`) VALUES ('$fname', '$lname', '$guardian', '$gender', '$email', '$personal_address', '$dob', '$experience', '$f_timer', '$school', '$instructor', '$school_address', '$s_email', '$s_phone', '$multiple_event_check', '$event_ids', '$event_names', '$hfnames', '$event_amount', current_timestamp())";
    $res=mysqli_query($db_conn,$sql);
    if(!$res){
        header("Location: index.php");
    }
    if(empty($first_event_ids) && empty($other_event_ids)){
        header("Location: index.php");
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHOENIX WUSHU NATIONALS REGISTRATION | PHX WUSHU NATIONALS</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
        rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500" rel="stylesheet" />
    <link rel="stylesheet" href="style.css">
    <script src="https://js.stripe.com/v3/"></script>
    <style>
    #paypalpay svg {
        width: 4rem;
    }

    #payButton svg{
        width: 3rem;
    }
    </style>
</head>

<body>
    <section class="form-box">
        <div class="container">

            <div class="row center-form">
                <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-12 col-lg-offset-3 form-wizard">

                    <!-- Form Wizard -->
                    <!-- <form role="form" action="" method="post"> -->

                    <h3 class='mb-5'>Phoenix wushu nationals registration</h3>
                    <!-- Display errors returned by checkout session -->
                    <div id="paymentResponse"></div>
                    <table class="table">
                        <tbody>
                            <?php
                    if(!empty($first_event_ids)){
                    for($i=0;$i<count($first_event_array);$i++){
                        $j=$i+1;
                        $sql= "SELECT * FROM `events` where `id`=$first_event_array[$i]";
                        $res=mysqli_query($db_conn,$sql);
                        $row=mysqli_fetch_assoc($res);
                            echo "<tr>
                                <th scope='row'>{$j}</th>
                                <td>{$row['name']}</td>
                                <td>&dollar;{$row['price']}</td>
                            </tr>";
                        }
                    }
                    if(!empty($other_event_ids)){
                    for($i=0;$i<count($other_event_array);$i++){
                            $j=$i+1;
                        $sql= "SELECT * FROM `other_options` where `o_id`=$other_event_array[$i]";
                        $res=mysqli_query($db_conn,$sql);
                        $row=mysqli_fetch_assoc($res);
                            echo "<tr>
                                <th scope='row'>{$j}</th>
                                <td>{$row['o_name']}</td>
                                <td>&dollar;{$row['o_price']}</td>
                            </tr>";
                        }
                    }

                    ?>
                            <tr>
                                <td colspan="2">Total:</td>
                                <td>&dollar;<?php echo $event_amount;?></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-flex" style="justify-content:center;">
                        <form class="paypal" action="request.php" method="post" id="paypal_form">
                            <input type="hidden" name="item_number" id="paypalid" value="<?php echo $event_ids;?>">
                            <input type="hidden" name="item_name" id="paypalname" value="<?php echo $event_names;?>">
                            <input type="hidden" name="amount" id="paypalprice" value="<?php echo $event_amount;?>">
                            <input type="hidden" name="currency_code" value="USD">
                            <button type="submit" name="submit" value='Paypal' class="px-1 mx-1 btn__default"
                                id="paypalpay">
                                <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 566.93 137.35">
                                    <defs>
                                        <style>
                                        .cls-1 {
                                            fill: #009ee3;
                                        }

                                        .cls-1,
                                        .cls-2,
                                        .cls-3 {
                                            fill-rule: evenodd;
                                        }

                                        .cls-2 {
                                            fill: #113984;
                                        }

                                        .cls-3 {
                                            fill: #172c70;
                                        }
                                        </style>
                                    </defs>
                                    <title>paypal-seeklogo.com</title>
                                    <path class="cls-1"
                                        d="M192.95,386.87h38.74c20.8,0,28.63,10.53,27.42,26-2,25.54-17.44,39.67-37.92,39.67H210.85c-2.81,0-4.7,1.86-5.46,6.9L201,488.74c-0.29,1.9-1.29,3-2.79,3.15H173.87c-2.29,0-3.1-1.75-2.5-5.54l14.84-93.93C186.79,388.66,188.85,386.87,192.95,386.87Z"
                                        transform="translate(-143.48 -354.54)" />
                                    <path class="cls-2"
                                        d="M361.14,385.13c13.07,0,25.13,7.09,23.48,24.76-2,21-13.25,32.62-31,32.67H338.11c-2.23,0-3.31,1.82-3.89,5.55l-3,19.07c-0.45,2.88-1.93,4.3-4.11,4.3H312.68c-2.3,0-3.1-1.47-2.59-4.76L322,390.29c0.59-3.76,2-5.16,4.57-5.16h34.54Zm-23.5,40.92h11.75c7.35-.28,12.23-5.37,12.72-14.55,0.3-5.67-3.53-9.73-9.62-9.7l-11.06.05-3.79,24.2h0Zm86.21,39.58c1.32-1.2,2.66-1.82,2.47-.34l-0.47,3.54c-0.24,1.85.49,2.83,2.21,2.83h12.82c2.16,0,3.21-.87,3.74-4.21l7.9-49.58c0.4-2.49-.21-3.71-2.1-3.71H436.32c-1.27,0-1.89.71-2.22,2.65l-0.52,3.05c-0.27,1.59-1,1.87-1.68.27-2.39-5.66-8.49-8.2-17-8-19.77.41-33.1,15.42-34.53,34.66-1.1,14.88,9.56,26.57,23.62,26.57,10.2,0,14.76-3,19.9-7.7h0ZM413.11,458c-8.51,0-14.44-6.79-13.21-15.11s9.19-15.11,17.7-15.11,14.44,6.79,13.21,15.11S421.63,458,413.11,458h0Zm64.5-44h-13c-2.68,0-3.77,2-2.92,4.46l16.14,47.26L462,488.21c-1.33,1.88-.3,3.59,1.57,3.59h14.61a4.47,4.47,0,0,0,4.34-2.13l49.64-71.2c1.53-2.19.81-4.49-1.7-4.49H516.63c-2.37,0-3.32.94-4.68,2.91l-20.7,30L482,416.82C481.46,415,480.11,414,477.62,414Z"
                                        transform="translate(-143.48 -354.54)" />
                                    <path class="cls-1"
                                        d="M583.8,385.13c13.07,0,25.13,7.09,23.48,24.76-2,21-13.25,32.62-31,32.67H560.78c-2.23,0-3.31,1.82-3.89,5.55l-3,19.07c-0.45,2.88-1.93,4.3-4.11,4.3H535.35c-2.3,0-3.1-1.47-2.59-4.76l11.93-76.45c0.59-3.76,2-5.16,4.57-5.16H583.8Zm-23.5,40.92h11.75c7.35-.28,12.23-5.37,12.72-14.55,0.3-5.67-3.53-9.73-9.62-9.7l-11.06.05-3.79,24.2h0Zm86.21,39.58c1.32-1.2,2.66-1.82,2.47-.34l-0.47,3.54c-0.24,1.85.49,2.83,2.21,2.83h12.82c2.16,0,3.21-.87,3.74-4.21l7.9-49.58c0.4-2.49-.21-3.71-2.1-3.71H659c-1.27,0-1.89.71-2.22,2.65l-0.52,3.05c-0.27,1.59-1,1.87-1.68.27-2.39-5.66-8.49-8.2-17-8-19.77.41-33.1,15.42-34.53,34.66-1.1,14.88,9.56,26.57,23.62,26.57,10.2,0,14.76-3,19.9-7.7h0ZM635.78,458c-8.51,0-14.44-6.79-13.21-15.11s9.19-15.11,17.7-15.11,14.44,6.79,13.21,15.11S644.29,458,635.78,458h0Zm59.13,13.74h-14.8a1.75,1.75,0,0,1-1.81-2l13-82.36a2.55,2.55,0,0,1,2.46-2h14.8a1.75,1.75,0,0,1,1.81,2l-13,82.36A2.55,2.55,0,0,1,694.91,471.76Z"
                                        transform="translate(-143.48 -354.54)" />
                                    <path class="cls-2"
                                        d="M168.72,354.54h38.78c10.92,0,23.88.35,32.54,8,5.79,5.11,8.83,13.24,8.13,22-2.38,29.61-20.09,46.2-43.85,46.2H185.2c-3.26,0-5.41,2.16-6.33,8l-5.34,34c-0.35,2.2-1.3,3.5-3,3.66H146.6c-2.65,0-3.59-2-2.9-6.42L160.9,361C161.59,356.62,164,354.54,168.72,354.54Z"
                                        transform="translate(-143.48 -354.54)" />
                                    <path class="cls-3"
                                        d="M179.43,435.29l6.77-42.87c0.59-3.76,2.65-5.56,6.75-5.56h38.74c6.41,0,11.6,1,15.66,2.85-3.89,26.36-20.94,41-43.26,41H185C182.44,430.72,180.56,432,179.43,435.29Z"
                                        transform="translate(-143.48 -354.54)" />
                                </svg></button>
                        </form>
                        <div id="buynow">
                            <button class="px-1 mx-1 btn__default" id="payButton">
                                <svg viewBox="0 0 512 214" version="1.1"
                                    xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                    preserveAspectRatio="xMidYMid">
                                    <g>
                                        <path
                                            d="M35.9822222,83.4844444 C35.9822222,77.9377778 40.5333333,75.8044444 48.0711111,75.8044444 C58.88,75.8044444 72.5333333,79.0755556 83.3422222,84.9066667 L83.3422222,51.4844444 C71.5377778,46.7911111 59.8755556,44.9422222 48.0711111,44.9422222 C19.2,44.9422222 0,60.0177778 0,85.1911111 C0,124.444444 54.0444444,118.186667 54.0444444,135.111111 C54.0444444,141.653333 48.3555556,143.786667 40.3911111,143.786667 C28.5866667,143.786667 13.5111111,138.951111 1.56444444,132.408889 L1.56444444,166.257778 C14.7911111,171.946667 28.16,174.364444 40.3911111,174.364444 C69.9733333,174.364444 90.3111111,159.715556 90.3111111,134.257778 C90.1688889,91.8755556 35.9822222,99.4133333 35.9822222,83.4844444 Z M132.124444,16.4977778 L97.4222222,23.8933333 L97.28,137.813333 C97.28,158.862222 113.066667,174.364444 134.115556,174.364444 C145.777778,174.364444 154.311111,172.231111 159.004444,169.671111 L159.004444,140.8 C154.453333,142.648889 131.982222,149.191111 131.982222,128.142222 L131.982222,77.6533333 L159.004444,77.6533333 L159.004444,47.36 L131.982222,47.36 L132.124444,16.4977778 Z M203.235556,57.8844444 L200.96,47.36 L170.24,47.36 L170.24,171.804444 L205.795556,171.804444 L205.795556,87.4666667 C214.186667,76.5155556 228.408889,78.5066667 232.817778,80.0711111 L232.817778,47.36 C228.266667,45.6533333 211.626667,42.5244444 203.235556,57.8844444 Z M241.493333,47.36 L277.191111,47.36 L277.191111,171.804444 L241.493333,171.804444 L241.493333,47.36 Z M241.493333,36.5511111 L277.191111,28.8711111 L277.191111,0 L241.493333,7.53777778 L241.493333,36.5511111 Z M351.431111,44.9422222 C337.493333,44.9422222 328.533333,51.4844444 323.555556,56.0355556 L321.706667,47.2177778 L290.417778,47.2177778 L290.417778,213.048889 L325.973333,205.511111 L326.115556,165.262222 C331.235556,168.96 338.773333,174.222222 351.288889,174.222222 C376.746667,174.222222 399.928889,153.742222 399.928889,108.657778 C399.786667,67.4133333 376.32,44.9422222 351.431111,44.9422222 Z M342.897778,142.933333 C334.506667,142.933333 329.528889,139.946667 326.115556,136.248889 L325.973333,83.4844444 C329.671111,79.36 334.791111,76.5155556 342.897778,76.5155556 C355.84,76.5155556 364.8,91.0222222 364.8,109.653333 C364.8,128.711111 355.982222,142.933333 342.897778,142.933333 Z M512,110.08 C512,73.6711111 494.364444,44.9422222 460.657778,44.9422222 C426.808889,44.9422222 406.328889,73.6711111 406.328889,109.795556 C406.328889,152.604444 430.506667,174.222222 465.208889,174.222222 C482.133333,174.222222 494.933333,170.382222 504.604444,164.977778 L504.604444,136.533333 C494.933333,141.368889 483.84,144.355556 469.76,144.355556 C455.964444,144.355556 443.733333,139.52 442.168889,122.737778 L511.715556,122.737778 C511.715556,120.888889 512,113.493333 512,110.08 Z M441.742222,96.5688889 C441.742222,80.4977778 451.555556,73.8133333 460.515556,73.8133333 C469.191111,73.8133333 478.435556,80.4977778 478.435556,96.5688889 L441.742222,96.5688889 L441.742222,96.5688889 Z"
                                            fill="#6772E5"></path>
                                    </g>
                                </svg>

                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
<script>
var buyBtn = document.getElementById('payButton');
var responseContainer = document.getElementById('paymentResponse');
// Create a Checkout Session with the selected product
var createCheckoutSession = function(stripe) {
    return fetch("stripe_charge.php", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            checkoutSession: 1,
            Name: "<?php echo $event_names; ?>",
            ID: "<?php echo $event_ids; ?>",
            Price: "<?php echo $event_amount; ?>",
            Currency: "USD",
        }),
    }).then(function(result) {
        return result.json();
    });
};

// Handle any errors returned from Checkout
var handleResult = function(result) {
    if (result.error) {
        responseContainer.innerHTML = '<p>' + result.error.message + '</p>';
    }
    buyBtn.disabled = false;
    buyBtn.textContent = 'Buy Now';
};

// Specify Stripe publishable key to initialize Stripe.js
var stripe = Stripe('<?php echo STRIPE_PUBLISHABLE_KEY; ?>');

buyBtn.addEventListener("click", function(evt) {
    buyBtn.disabled = true;
    buyBtn.textContent = 'Please wait...';
    createCheckoutSession().then(function(data) {
        if (data.sessionId) {
            stripe.redirectToCheckout({
                sessionId: data.sessionId,
            }).then(handleResult);
        } else {
            handleResult(data);
        }
    });
});
</script>

</html>