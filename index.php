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
</head>

<body>
    <section class="form-box">
        <div class="container">

            <div class="row center-form">
                <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-12 col-lg-offset-3 form-wizard">

                    <!-- Form Wizard -->
                    <form role="form" action="paymentlist.php" method="post">

                        <h3>Phoenix wushu nationals registration</h3>

                        <!-- Form progress -->
                        <div class="form-wizard-steps form-wizard-tolal-steps-4">
                            <div class="form-wizard-progress">
                                <div class="form-wizard-progress-line" data-now-value="12.25" data-number-of-steps="4"
                                    style="width: 12.25%;"></div>
                            </div>
                            <!-- Step 1 -->
                            <div class="form-wizard-step active">
                                <div class="form-wizard-step-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                <p>Competitor Information</p>
                            </div>
                            <!-- Step 1 -->

                            <!-- Step 2 -->
                            <div class="form-wizard-step">
                                <div class="form-wizard-step-icon"><i class="fa fa-location-arrow"
                                        aria-hidden="true"></i></div>
                                <p>School Information</p>
                            </div>
                            <!-- Step 2 -->

                            <!-- Step 3 -->
                            <div class="form-wizard-step">
                                <div class="form-wizard-step-icon"><i class="fa fa-briefcase" aria-hidden="true"></i>
                                </div>
                                <p>Choose Your Divisions</p>
                            </div>
                            <!-- Step 3 -->

                            <!-- Step 4 -->
                            <!-- <div class="form-wizard-step">
                                <div class="form-wizard-step-icon"><i class="fa fa-money" aria-hidden="true"></i></div>
                                <p>Payment</p>
                            </div> -->
                            <!-- Step 4 -->
                        </div>
                        <!-- Form progress -->


                        <!-- Form Step 1 -->
                        <fieldset>

                            <h4 class="mt-3">Competitor Information: <span></span></h4>
                            <div class="form-group">
                                <label>First Name: <span>*</span></label>
                                <input type="text" name="fname" placeholder="First Name" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>Last Name: <span>*</span></label>
                                <input type="text" name="lname" placeholder="Last Name" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>If Under 18, Full Name of Legal Guardian</label>
                                <input type="text" name="guardian" placeholder="Guardian Name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Gender: </label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Male" checked="checked"> Male
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Female"> Female
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Email: <span>*</span></label>
                                <input type="text" name="email" placeholder="Email" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>Phone: <span>*</span></label>
                                <input type="text" name="phone" placeholder="Phone" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>Address: <span>*</span></label>
                                <input type="text" name="address" placeholder="Street Address"
                                    class="form-control required">
                                <input type="text" name="address2" placeholder="Street Address Line 2"
                                    class="form-control required">
                                <div class="row px-15">
                                    <input type="text" name="address3" placeholder="City"
                                        class="form-control required col-lg">
                                    <input type="text" name="address4" placeholder="State"
                                        class="form-control required col-lg">
                                </div>
                                <div class="row px-15">
                                    <input type="text" name="address5" placeholder="Postal/Zip Code"
                                        class="form-control required col-lg">
                                    <select class="form-control col-lg" name="address6" style="height:44px;">
                                        <option>USA</option>
                                        <option>Australia</option>
                                        <option>Canada</option>
                                        <option>England</option>
                                        <option>India</option>
                                        <option>China</option>
                                    </select>
                                </div>
                            </div>
                            <div>
                                <div class="row form-inline mb-3">
                                    <div class="form-group col-md-3 col-xs-3 plr-0">
                                        <label>Date Of Birth: </label>
                                    </div>
                                    <div class="col-md-3 col-xs-3">
                                        <input class="form-date required" type="date" name="dob" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Experience Level: <span>*</span></label>
                                <div class="row px-3">
                                    <input type="text" name="experience-year" placeholder="Years"
                                        class="form-control required col-lg">
                                    <input type="text" name="experience-month" placeholder="Months"
                                        class="form-control required col-lg">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Are you a First Timer: </label>
                                <label class="radio-inline">
                                    <input type="radio" name="first-timer" value="yes" checked="checked"> Yes
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="first-timer" value="no"> No
                                </label>
                            </div>
                            <div class="form-wizard-buttons">
                                <button type="button" class="btn btn-next">Next</button>
                            </div>
                        </fieldset>
                        <!-- Form Step 1 -->

                        <!-- Form Step 2 -->
                        <fieldset>

                            <h4>School Information : <span></span></h4>
                            <div class="form-group">
                                <label class="mb-0">Name of Martial Arts School: <span>*</span></label>
                                <p class="condition1">(If not applicable, please type "None")</p>
                                <input type="text" name="school" placeholder="Name of Martial Arts School"
                                    class="form-control required">
                            </div>
                            <div class="form-group">
                                <label class="mb-0">Name of Instructor: <span>*</span></label>
                                <p class="condition1">(If not applicable, please type "None")</p>
                                <input type="text" name="instructor" placeholder="Name of Instructor"
                                    class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>Address: <span>*</span></label>
                                <input type="text" name="s_address" placeholder="Street Address"
                                    class="form-control required">
                                <input type="text" name="s_address2" placeholder="Street Address Line 2"
                                    class="form-control required">
                                <div class="row px-15">
                                    <input type="text" name="s_address3" placeholder="City"
                                        class="form-control required col-lg">
                                    <input type="text" name="s_address4" placeholder="State"
                                        class="form-control required col-lg">
                                </div>
                                <div class="row px-15">
                                    <input type="text" name="s_address5" placeholder="Postal/Zip Code"
                                        class="form-control required col-lg">
                                    <select class="form-control col-lg" name="s_address6" style="height:44px;">
                                        <option>USA</option>
                                        <option>Australia</option>
                                        <option>Canada</option>
                                        <option>England</option>
                                        <option>India</option>
                                        <option>China</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>School Email: <span>*</span></label>
                                <input type="text" name="schoolemail" placeholder="School Email"
                                    class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>School Phone: <span>*</span></label>
                                <input type="text" name="schoolphone" placeholder="School Phone"
                                    class="form-control required">
                            </div>

                            <div class="form-wizard-buttons">
                                <button type="button" class="btn btn-previous">Previous</button>
                                <button type="button" class="btn btn-next">Next</button>
                            </div>
                        </fieldset>
                        <!-- Form Step 2 -->

                        <!-- Form Step 3 -->
                        <fieldset>

                            <h4>Choose your Divisions: <span></span></h4>
                            <div style="clear:both;"></div>
                            <h5>Choose Your First Event </h5>
                            <p>Please only choose one event in this field. If you have more events, click yes on 'More
                                than one event?' field below to select your other events.</p>
                            <label class="switch switch-left-right">
                                <input class="switch-input" id="eventCheckbox" name="multipleEvents"
                                    value="more_than_one_event" type="checkbox" />
                                <span class="switch-label" data-on="Yes" data-off="No"></span>
                                <span class="switch-handle"></span>
                            </label>
                            <?php 
                            include_once 'db_connection.php'; 
                            $results = mysqli_query($db_conn,"SELECT * FROM events where status=1");
                            echo "<form id='event_form'>
                            <div id='oneEvent'>
                            <h5>Choose only 1 event</h5>";
                            echo "<div class='row'>";
                            while($row = mysqli_fetch_array($results)){
                          $price=(float)$row['price'];
                          $name_string=str_replace(' ','_',$row['name']);
                          echo "<div class='col-lg-6'><div class='row'><input type='radio' id='e1-{$row['id']}' value='event-{$row['id']}' class='eventlist1 col-1 my-2' name='event' data-price={$price} data-id={$row['id']} data-name={$name_string}><label class='px-3 col-10' for='e1-{$row['id']}'>{$row['name']}</label></div></div>";
                        }
                        
                        echo "</div>
                        <div id='hf-show1'></div>
                        </div>
                        </form>";
                  
                        $results2 = mysqli_query($db_conn,"SELECT * FROM events where status=1");
                        echo "<form id='event_form_2'>
                        <div id='moreEvent' style='display:none;'>
                        <h5>Choose more than 1 event</h5>";
                        echo "<div class='row'>";
                        while($row1 = mysqli_fetch_array($results2)){
                          $price1=(float)$row1['price'];
                          $name_string1=str_replace(' ','_',$row1['name']);
                          echo "<div class='col-lg-6'><div class='row'><input type='checkbox' id='e-{$row1['id']}' value='event2-{$row1['id']}' class='eventlist col-1 my-2' name='eventlist' data-price={$price1} data-id={$row1['id']} data-name={$name_string1}><label class='px-3 col-10' for='e-{$row1['id']}'>{$row1['name']}</label></div></div>";
                        }
                        echo "</div>
                        <div id='hf-show2'></div>
                        </div>
                        </form>";
                                ?>

                            <h5>Group Information - $25 per person (Group Leader will pay for the total amount of all
                                group members)</h5>
                            <p>Please fill in the information for EACH group that you will be competing in. Groups
                                without filling in the required information will not be eligible to compete. Click add
                                more, if you are competing in more than one group.</p>
                            <h5>Duilian Registration Info</h5>
                            <p>All Duilian sets will be charged $90 for each individual group. Please have your team
                                leader register for your group. (If you have more than one group in the same division,
                                please fill in a separate registration form for your second group)</p>
                            </p>

                            <h5>Other Options</h5>
                            <form id="other_event_form">
                                <?php
                                $res = mysqli_query($db_conn,"SELECT * FROM other_options");
                                while($row = mysqli_fetch_array($res)){
                                    $o_name_string=str_replace(' ','_',$row['o_name']);
                                    echo "<div class='col-lg-6'><div class='row'><input type='checkbox' id='oe-{$row['o_id']}' value='event-{$row['o_id']}' class='other_events col-1 my-2' name='other_events' data-o_price={$row['o_price']} data-id={$row['o_id']} data-o_id='o{$row['o_id']}' data-o_name={$o_name_string}><label class='px-3 col-10' for='oe-{$row['o_id']}'>{$row['o_name']}</label></div></div>";
                                }
                                ?>
                            </form>


                            <h5>Total Price:</h5>
                            <div id="totalamount">0</div>

                            <input type="hidden" id="paypalid" name="event_ids">
                            <input type="hidden" id="paypalname" name="event_names">
                            <input type="hidden" id="paypalprice" name="event_amount">
                            <input type="hidden" id="hfnames" name="hfnames">
                            <input type="hidden" name="first_event_array" id="first_event_array">
                            <input type="hidden" name="other_event_array" id="other_event_array">


                            <input type="checkbox" name="terms_conditions" id="terms_conditions"
                                class="my-2" required><label class="px-3" for="terms_conditions">I agree to the <a
                                    style="cursor: pointer; color:blue;" data-toggle="modal" data-target="#terms">Terms
                                    & Conditions</a> </label>
                            <div class="modal fade" id="terms" tabindex="-1" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Terms & Conditions</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <p style="color:#888;">By clicking on the checkbox, I agree to the Terms &
                                                Conditions<br>

                                                Terms & Conditions<br>

                                                Liability Waiver for all Athletes, Coaches, Team Members, Judges,
                                                Volunteers<br>

                                                I, knowingly and without duress, do voluntarily submit my entry into the
                                                Mock Team Trials and Phoenix Wushu Nationals. These Mock Team Trials and
                                                Nationals are hosted by the Phoenix Wushu Academy and sanctioned by the
                                                United States of America Wushu-Kungfu Federation (USAWKF). Hereafter,
                                                Phoenix Wushu Academy is referred to as the Organizing Committee and the
                                                USAWKF is known as the Sanctioning Body. I hereby assume all risk of
                                                physical and mental injuries, disabilities, and losses, which may result
                                                from or in connection with my participation in the tournaments or
                                                events. I fully understand that any medical attention or treatment
                                                afforded to me by the Organizing Committee or the Sanctioning Body will
                                                be of the first aid type only. Acting for myself, heirs, personal
                                                representatives, and assignees, I do hereby release and forever
                                                discharge, and agree to indemnify and hold harmless the Organizing
                                                Committee, the Sanctioning Body, and their officers, agents, officials,
                                                judges, representatives, servants, employees, volunteers, sponsors and
                                                all other related members from all claims, actions, suits, and
                                                controversies at law or in equity by reason of any matter, cause, or
                                                thing whatsoever, that I may sustain as a result of or in connection
                                                with my participation in the tournaments or events, use the
                                                Organizations equipment and facilities including travel thereto there
                                                from, whether due to negligence, omission, default, or other action of
                                                any person or entity. I also understand that participation in the
                                                tournaments or events, entails a risk of injury, and I assume full
                                                responsibility for all of my actions, intentional or otherwise, during
                                                and in connection with my participation in the trials. I agree that my
                                                performance, attendance, and participation at the trials may be filmed
                                                or otherwise recorded or telecast live. I consent to the use by the
                                                Organizing Committee and the Sanctioning Body of my name, likeness,
                                                voice, poses, pictures, tournaments or events films, ad biographical
                                                data concerning fully or in parts, in any form or language, with or
                                                without other material, throughout the world, without limitation, for
                                                television, radio, video, theatrical motion pictures, internet, or any
                                                other medium by devices now known or hereafter devised, and I do hereby
                                                waive any compensation in regard thereof as well as any future rights to
                                                the aforementioned. I certify that I am healthy, and have not been
                                                advised by any doctor, coach, or trainer not to compete for medical or
                                                other reason. In addition, I hereby grant permission for trained medical
                                                technician to provide first aid to me in the event of an injury, and
                                                such, will hold harmless such technician for all services performed in a
                                                reasonable manner. I hereby accept any and all financial obligations
                                                incurred as a result of such immediate medical treatment, and subsequent
                                                related costs. I agree to indemnify the Organizing Committee and the
                                                Sanctioning Body for all costs related to treatment administered during
                                                Tournament.<br>

                                                This Waiver and assumption of the risk shall apply to all participants,
                                                heirs, assigns, parents, guardians, executors, and as such I agree to
                                                hold harmless and will indemnify, the Organizing Committee and the
                                                Sanctioning Body and other tournament sponsors, and any agents,
                                                representatives, or spokespersons for such above mentioned entities.<br>

                                                Covid-19 Liability Waiver<br>

                                                I acknowledge the contagious nature of the Coronavirus/COVID-19 and that
                                                the CDC and many other public health authorities still recommend
                                                practicing social distancing.<br>
                                                I further acknowledge that the Organizing Committee cannot guarantee
                                                that I will not become infected with the Coronavirus/Covid-19. I
                                                understand that the risk of becoming exposed to and/or infected by the
                                                Coronavirus/COVID-19 may result from the actions, omissions, or
                                                negligence of myself and others, including, but not limited to,
                                                organizers, volunteers and other competitors and their families.
                                                I voluntarily seek to participate in the Tournament and acknowledge that
                                                I am increasing my risk to exposure to the Coronavirus/COVID-19. I
                                                acknowledge that I must comply with all set procedures to reduce the
                                                spread while attending my appointment.<br>
                                                I attest that on the date of the Tournament:<br>
                                                * I am not experiencing any symptom of illness such as cough, shortness
                                                of breath or difficulty breathing, fever, chills, repeated shaking with
                                                chills, muscle pain, headache, sore throat, or new loss of taste or
                                                smell.<br>
                                                * I have not traveled internationally within the last 14 days.<br>
                                                * I have not traveled to a highly impacted area within the United States
                                                of America in the last 14 days.<br>
                                                * I do not believe I have been exposed to someone with a suspected
                                                and/or confirmed case of the Coronavirus/COVID-19.<br>
                                                * I have not been diagnosed with Coronavirus/Covid-19 and not yet
                                                cleared as non contagious by state or local public health
                                                authorities.<br>
                                                * I am following all CDC recommended guidelines as much as possible and
                                                limiting my exposure to the Coronavirus/COVID-19.<br>
                                                I hereby release and agree to hold the Organizing Committee harmless
                                                from, and waive on behalf of myself, my heirs, and any personal
                                                representatives any and all causes of action, claims, demands, damages,
                                                costs, expenses and compensation for damage or loss to myself and/or
                                                property that may be caused by any act, or failure to act of the
                                                Organizing Committee, or that may otherwise arise in any way in
                                                connection with any services received from the Organizing Committee. I
                                                understand that this release discharges the Organizing Committee from
                                                any liability or claim that I, my heirs, or any personal representatives
                                                may have against the Organizing Committee with respect to any bodily
                                                injury, illness, death, medical treatment, or property damage that may
                                                arise from, or in connection to, any services received from the
                                                Organizing Committee. This liability waiver and release extends to the
                                                Organizing Committee with all owners, partners, volunteers and
                                                employees.<br>

                                                I understand that the rules and regulations applicable to the USAWKF and
                                                the International Wushu Federation (IWUF)) are designed, in part, for
                                                the safety and protection of participants. I agree to abide by the rules
                                                and regulations established by the IWUF, and the Organizing Committee. I
                                                certify that all information provided above is true and correct to the
                                                best of my knowledge and belief, and I have read and fully understand
                                                the Waiver listed above.<br>



                                                Confidentiality<br>

                                                The Organizing Committee promises to be confidential to all such
                                                confidential information from the competitor and shall not disclose any
                                                relevant confidential information to any third party or sanctioning body
                                            </p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-wizard-buttons">
                                <button type="button" class="btn btn-previous">Previous</button>
                                <button type="submit" class="btn btn-submit">Submit</button>
                            </div>
                        </fieldset>
                        <!-- Form Step 3 -->

                    </form>
                    <!-- Form Wizard -->
                </div>
            </div>

        </div>
    </section>
</body>
<script src="jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="script.js"></script>
<script>
let totalamount = document.getElementById('totalamount');
$("#eventCheckbox").change(function(e) {
    $('#event_form').trigger("reset");
    $('#event_form_2').trigger("reset");
    $('#other_event_form').trigger("reset");
    calamount = 0;
    totalamount.innerText = calamount;
    eventnames = [];
    eventid = [];
    $("#hf-show1").html("");
    $("#hf-show2").html("");
    $("#hfnames").attr("value", "");
    $("#paypalid").attr("value", "");
    $("#paypalname").attr("value", "");
    $("#paypalprice").attr("value", "");
    $("#first_event_array").attr("value", "");
    $("#other_event_array").attr("value", "");
    if (e.target.checked) {
        $("#oneEvent").hide();
        $("#moreEvent").show();
        hfname2 = [];
    } else {
        $("#oneEvent").show();
        $("#moreEvent").hide();
    }
})

// One event
let events1 = document.getElementsByClassName('eventlist1');
let paypalid = document.getElementById('paypalid');
let paypalname = document.getElementById('paypalname');
let paypalprice = document.getElementById('paypalprice');
let hfnames = document.getElementById('hfnames');
Array.from(events1).forEach((element) => {
    element.addEventListener("change", (e) => {
        amount = parseInt(e.target.dataset.price);
        t_amount = parseInt(totalamount.innerText);
        id = e.target.dataset.id;
        name = e.target.dataset.name;
        if (e.target.checked) {
            $.ajax({
                url: "showhf.php",
                type: "POST",
                data: {
                    show1: true,
                    eventid1: id
                },
                success: function(data) {
                    $("#hf-show1").html(data).show();
                }
            });

            checkedFunc(id, name, amount, true, true);
            firstEventFunc(id, true, true);
        }
    })

})

function handRecordFunc() {
    let handforms = document.getElementsByClassName('handforms');
    Array.from(handforms).forEach((element1) => {
        element1.addEventListener("change", (e1) => {
            if (e1.target.checked) {
                hfname = e1.target.dataset.hfname;
                hfnames.setAttribute("value", hfname);
            }
        })
    })

}


// More than 1 event
let events = document.getElementsByClassName('eventlist');
Array.from(events).forEach((element) => {
    element.addEventListener("change", (e) => {
        amount = parseInt(e.target.dataset.price);
        t_amount = parseInt(totalamount.innerText);
        id = e.target.dataset.id;
        name = e.target.dataset.name;
        if (e.target.checked) {
            $.ajax({
                url: "showhf.php",
                type: "POST",
                data: {
                    show2: true,
                    eventid1: id
                },
                success: function(data) {
                    $("#hf-show2").append(data).show();
                }
            });


            checkedFunc(id, name, amount, true);
            firstEventFunc(id, true);
        } else {
            checkedFunc(id, name, amount, false);
            firstEventFunc(id, false);
        }
    })
})

$(document).on("change", ".handforms2", function(e2) {
    hfInput = e2.target.dataset.hfname;
    if (e2.target.checked) {
        if (hfname2.length === 0) {
            hfname2 = [hfInput];
        } else {
            hfname2.push(hfInput);
        }
    } else {
        for (var i = 0; i < hfname2.length; i++) {
            if (hfname2[i] === hfInput) {
                hfname2.splice(i, 1);
            }
        }
    }
    hfNameString = hfname2.toString();
    hfnames.setAttribute("value", hfNameString);
})
// More than 1 event



//Other Events

$(document).on("change", ".other_events", function(element) {
    id = element.target.dataset.id;
    o_id = element.target.dataset.o_id;
    name = element.target.dataset.o_name;
    amount = parseInt(element.target.dataset.o_price);

    if (element.target.checked) {
        checkedFunc(o_id, name, amount, true);
        otherCartFunc(id, true);
    } else {
        checkedFunc(o_id, name, amount, false);
        otherCartFunc(id, false)
    }
})


function checkedFunc(id, name, amount, check, oneEvent) {
    t_amount = parseInt(totalamount.innerText);
    if (oneEvent) {
        t_amount = 0;
        $('#other_event_form').trigger("reset");
    }
    if (check) {
        if (t_amount == 0) {
            calamount = amount;
            eventnames = [name];
            eventid = [id];
        } else {
            calamount = t_amount + amount;
            eventnames.push(name);
            eventid.push(id);
        }
    } else {
        t_amount = parseInt(totalamount.innerText);
        calamount = t_amount - amount;
        for (var i = 0; i < eventnames.length; i++) {
            if (eventnames[i] === name) {
                eventnames.splice(i, 1);
            }
        }
        for (var i = 0; i < eventid.length; i++) {
            if (eventid[i] === id) {
                eventid.splice(i, 1);
            }
        }
    }
    idString = eventid.toString();
    eventString = eventnames.toString();
    totalamount.innerText = calamount;
    valuesFunc(idString, eventString, calamount);
}




function valuesFunc(eventid, eventname, totalamount) {
    paypalid.setAttribute("value", eventid);
    paypalname.setAttribute("value", eventname);
    paypalprice.setAttribute("value", totalamount);
}


function otherCartFunc(id, check) {
    if (check) {
        if ($("#other_event_array").val() == "") {
            idArray = [id]
        } else {
            idArray.push(id);
        }
    } else {
        for (var i = 0; i < idArray.length; i++) {
            if (idArray[i] === id) {
                idArray.splice(i, 1);
            }
        }
    }
    other_event_string = idArray.toString();
    $("#other_event_array").attr("value", other_event_string);
}


function firstEventFunc(id, check, firstevent) {
    if (firstevent) {
        $("#first_event_array").attr("value", "")
    }
    if (check) {
        if ($("#first_event_array").val() == "") {
            idArray1 = [id]
        } else {
            idArray1.push(id);
        }
    } else {
        for (var i = 0; i < idArray1.length; i++) {
            if (idArray1[i] === id) {
                idArray1.splice(i, 1);
            }
        }
    }
    first_event_string = idArray1.toString();
    $("#first_event_array").attr("value", first_event_string);
}
</script>

</html>