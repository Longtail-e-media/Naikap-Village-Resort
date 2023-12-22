<?php 
$resbking='';
$resbtnlink='';

$booking_type = Config::getField('book_type', true);
$booking_page = Config::getField('hotel_page', true);
$booking_code = Config::getField('hotel_code', true);
$chk_in  = date('Y-m-d');
$chk_out = date('Y-m-d', strtotime("+1 day"));

// Default Reservation
if($booking_type==1) {
    $resbking.='<form action="'.BASE_URL.'reservation" method="post" id="default-form">
                    <div class="book_table_item">
                        <div class="input-append date form_datetime">
                            <input size="16" type="text" value="'.$chk_in.'" id="checkin" readonly placeholder="Arrival Date">
                            <span class="add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="book_table_item">
                        <div class="input-append date form_datetime">
                            <input size="16" type="text" value="'.$chk_out.'" id="checkout" readonly placeholder="Departure Date">
                            <span class="add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="book_table_item">
                        <a class="book_now_btn" href="" target="_blank">Reserve now</a>
                    </div>
                </form>';

    // Bottom link
    $resbtnlink.='<a class="book_now_btn" href="'.BASE_URL.'reservation" target="_blank">Reserve now</a>';  
}

// Nepalhotel 
if($booking_type==2) {
    $resbking.='<form action="'.BASE_URL.$booking_page.'" method="get" target="_blank" id="nepalhotel-form">
                   <div class="book_table_item">
                        <div class="input-append date form_datetime">
                            <input type="hidden" name="hotel_code" value="'.$booking_code.'"> 
                            <input name="hotel_check_in" type="text" id="checkin" class="input-control border-white" placeholder="Check In" value="'.$chk_in.'"/>
                            <span class="add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="book_table_item">
                        <div class="input-append date form_datetime">
                            <input name="hotel_check_out" type="text" id="checkout" class="input-control border-white" placeholder="Check Out" value="'.$chk_out.'"/>
                            <span class="add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>   
                        </div>
                    </div>
                    <div class="book_table_item">
                        <button id="btn-book" class="book_now_btn">Reserve now</button>
                    </div>
                </form>';

    // Bottom link
    $resbtnlink.='<a href="'.BASE_URL.'result.php?hotel_code='.$booking_code.'" class="book_now_btn" target="_blank">Reserve now</a>';
}

// Fastbooking
if($booking_type==3) {
    $resbking.='<form target="dispoprice" name="idForm" action="http://www.fastbookings.biz/DIRECTORY/'.$booking_page.'" id="fastbooking-form">
        <ul>
            <li>
	    	<span>Check In</span>
                <i class="fa fa-calendar-plus-o"></i>        
                <input name="arrival" type="text" id="checkin" class="input-control border-white" placeholder="Check In" value="'.$chk_in.'"/>
            </li>
            <li>
	    	<span>Check Out</span>
                <i class="fa fa-calendar-plus-o"></i> 
                <input name="departure" type="text" id="checkout" class="input-control border-white" placeholder="Check Out" value="'.$chk_out.'"/>
            </li>
            <li>
	    	<span>Adult</span>
                <i class="fa fa-caret-down"></i>
                <select id="form-select" class="form-select" name="adulteresa">
                    <option class="option-test" value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
            </li>
            <li>
	    	<span>Child</span>
                <i class="fa fa-caret-down"></i>
                <select class="form-select" name="enfantresa">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
            </li>
            <li>
	    	<span>&nbsp;</span>
                <input type="hidden" name="showPromotions" value="1">
                <input type="hidden" name="langue" value="">       
                <input type="hidden" name="Clusternames" value="'.$booking_code.'">
                <input type="hidden" name="Hotelnames" value="'.$booking_code.'">        
                <button name="B1" id="btn-book" class="btn btn-large btn-darkbrown">Book Now</button>
            </li>
        </ul>
    </form>';

    // Bottom link
    $resbtnlink.='<a href="http://www.fastbookings.biz/DIRECTORY/'.$booking_page.'?s=results&Clusternames='.$booking_code.'&Hotelnames='.$booking_code.'" class="btn btn-medium btn-darkbrown" target="_blank">Book now</a>';
}

// Booking.com
if($booking_type==4) { 
    $resbking.='<form action="http://www.booking.com/hotel/np/'.$booking_page.'" method="get" target="booking_popup" id="booking-form">
        <ul>
            <li>&nbsp;</li>
            <li>
                <i class="fa fa-calendar-plus-o"></i>  
                <input name="check_in" type="text" id="checkin" class="input-control border-white" placeholder="Check In" value="'.$chk_in.'"/>
            </li>
            <li>
                <i class="fa fa-calendar-plus-o"></i>  
                <input name="check_out" type="text" id="checkout" class="input-control border-white" placeholder="Check Out" value="'.$chk_out.'"/>
            </li>
            <li>
                <input type="hidden" name="aid" value="330843" />
                <input type="hidden" name="hotel_id" value="'.$booking_code.'" />
                <input type="hidden" name="lang" value="en" />
                <input type="hidden" name="pb" value="" />
                <input type="hidden" name="stage" value="0" />
                <input type="hidden" name="hostname" value="www.booking.com" />
                <input type="hidden" name="checkin_monthday" class="checkin-monthday" value="'.date('d').'" />
                <input type="hidden" name="checkin_year_month" class="checkin-year-month" value="'.date('Y-m').'" />
                <input type="hidden" name="checkout_monthday" class="checkout-monthday" value="'.date('d', strtotime('+1 day')).'" />
                <input type="hidden" name="checkout_year_month" class="checkout-year-month" value="'.date('Y-m').'" />       
                <button id="btn-book" class="btn btn-large btn-darkbrown">Book now</button>
            </li>
            <li>&nbsp;</li>
        </ul>
    </form>';

    // Bottom link
    $resbtnlink.='<a href="http://www.booking.com/hotel/np/'.$booking_page.'?aid='.$booking_code.'" class="btn btn-medium btn-darkbrown" target="_blank">Book now</a>';
}

$jVars['module:booking-form'] = $resbking;
$jVars['module:book-bottom-link'] = $resbtnlink;

$script='';

// Fastbooking
if($booking_type==3) {
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fbparam.js"></script>'."\n";
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fblib.js"></script>'."\n";
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fbfulltrack.js"></script>'."\n";
}

$jVars['footer:script'] = $script;



$booking_undergallery = '
                                <!--<div class="booking-wrapper">
                                    <div class="container">
                                        <div class="booking-inner clearfix">
                                            <form action="result.php" target="_blank" class="form1 clearfix">
                                                <input type="hidden" name="hotel_code" value="'. $booking_code .'">
                                                <div class="col1 c1">
                                                    <div class="input1_wrapper">
                                                        <label>Check in</label>
                                                        <div class="input1_inner">
                                                            <input type="text" class="form-control input" placeholder="Check in" id="checkin" name="hotel_check_in">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col1 c2">
                                                    <div class="input1_wrapper">
                                                        <label>Check out</label>
                                                        <div class="input1_inner">
                                                            <input type="text" class="form-control input" placeholder="Check out" id="checkout" name="hotel_check_out">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col3 c6">
                                                    <button type="submit" class="btn-form1-submit">Book Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>-->


                                <div class="booking-wrapper">
                                    <div class="container">
                                        <div class="booking-inner clearfix">
                                            <form action="result.php" target="_blank" class="form1 clearfix">
                                            <input type="hidden" name="hotel_code" value="'. $booking_code .'">
                                                <div class="col1 c1">
                                                    <div class="input1_wrapper">
                                                        <label>Check in</label>
                                                        <div class="input1_inner">
                                                            <input type="text" class="form-control input " placeholder="Check in" id="checkin" name="hotel_check_in">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col1 c2">
                                                    <div class="input1_wrapper">
                                                        <label>Check out</label>
                                                        <div class="input1_inner">
                                                            <input type="text" class="form-control input " placeholder="Check out" id="checkout" name="hotel_check_out">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2 c3">
                                                    <div class="select1_wrapper">
                                                        <label>Adults</label>
                                                        <div class="select1_inner">
                                                            <select class="select2 select" style="width: 100%">
                                                                <option value="1">1 Adult</option>
                                                                <option value="2">2 Adults</option>
                                                                <option value="3">3 Adults</option>
                                                                <option value="4">4 Adults</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2 c4">
                                                    <div class="select1_wrapper">
                                                        <label>Children</label>
                                                        <div class="select1_inner">
                                                            <select class="select2 select" style="width: 100%">
                                                                <option value="1">Children</option>
                                                                <option value="1">1 Child</option>
                                                                <option value="2">2 Children</option>
                                                                <option value="3">3 Children</option>
                                                                <option value="4">4 Children</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2 c5">
                                                    <div class="select1_wrapper">
                                                        <label>Rooms</label>
                                                        <div class="select1_inner">
                                                            <select class="select2 select" style="width: 100%">
                                                                <option value="1">1 Room</option>
                                                                <option value="2">2 Rooms</option>
                                                                <option value="3">3 Rooms</option>
                                                                <option value="4">4 Rooms</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col3 c6">
                                                    <button type="submit" class="btn-form1-submit">Book Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
';


$jVars['module:booking_undergallery'] = $booking_undergallery;