<?php

$configRec = Config::find_by_id(1);
/*
* Top Location
*/
$tpres = '';
$tellinked = '';
$roomcontact = '';

/*$telno = explode(",", $configRec->contact_info);
foreach ($telno as $tel) {
    $tellinked .= '<a href="tel:' . $tel . '">' . $tel . '</a>';
}*/
$telno = explode(",", $configRec->contact_info);
$telno1 = explode(",", $configRec->contact_info2);
if (!@$telno[1]) {
    $tellinked = '<a href="tel:' . $telno[0] . '">' . $telno[0] . '</a> ';
} else {
    $tellinked = '<a href="tel:' . $telno[0] . '">' . $telno[0] . '</a> / <a href="tel:' . $telno[1] . '">' . $telno[1] . '</a>';
    /*$telenum='<a href="tel:'.$telno[3].'">'.$telno[3].'</a> / <a href="tel:'.$telno[4].'">'.$telno[4].'</a>';
    */
}
if (!@$telno1[1]) {
    $tellinked1 = '<a href="tel:' . $telno1[0] . '">' . $telno1[0] . '</a> ';

} else {
    $tellinked1 = '<a href="tel:' . $telno1[0] . '">' . $telno1[0] . '</a> / <a href="tel:' . $telno1[1] . '">' . $telno1[1] . '</a>';
    /*$telenum='<a href="tel:'.$telno[3].'">'.$telno[3].'</a> / <a href="tel:'.$telno[4].'">'.$telno[4].'</a>';
    */
}

$emlAddress = str_replace('@', '&#64;', $configRec->email_address);
$mlAddress = str_replace('@', '&#64;', $configRec->mail_address);

$tpres .= ' <div class="col-md-3 col-sm-12">
                    <h3>Hotel Peninsula Pvt. Ltd.</h3>
                    <ul id="contact_details_footer">
                        <li>' . $siteRegulars->fiscal_address . '</br>
                        ' . $tellinked . '<br><a href="mailto:' . $emlAddress . '">' . $emlAddress . '</a></li>
                    </ul>  
                </div>
                <div class="col-md-3 col-sm-4">
                     <h3>Reservation Office</h3>
                    <ul>
                        <li>' . $siteRegulars->address . '</li>
                         <li>' . $tellinked1 . '<br> <a href="mailto:' . $mlAddress . '">' . $mlAddress . '</a></li>
                    </ul>
                </div> 

        ';
$roomcontact .= ' <div class="box_style_2">
		<h4>Need help?</h4>
                <i class="icon_set_1_icon-90"></i>
                <a href="tel:' . $telno[0] . '">' . $telno[0] . '</a>
                <i class="icon_set_1_icon-84"></i>
                <a href="mailto:' . $emlAddress . '"> ' . $emlAddress . '</a>
            </div>';

$jVars['module:footer-location'] = $tpres;
$jVars['module:room-location'] = $roomcontact;


$reslocinfo = '';
$resgmap = '';
$resbrief = '';

$telno = explode(",", $configRec->contact_info);

$tellinked = '';
$count = 1;

foreach ($telno as $tel) {
    if($count>1){
        $tellinked .= ' | ';
    }

    $tellinked .= '<a href="tel:' . $tel . '">' . $tel . '</a>';
    $count++;
}

if ($configRec) {

    /*
    * Office location
    */
    $reslocinfo .= '  
        <div class="col-md-6 mb-60">
            <div class="reservations mb-30">
                <div class="icon"><span class="flaticon-call"></span></div>
                <div class="text">
                    <p>Call us at</p> '. $tellinked .'
                </div>
            </div>
            <div class="reservations mb-30">
                <div class="icon"><span class="flaticon-envelope"></span></div>
                <div class="text">
                    <p>Email Info</p> <a href="mailto:'. $siteRegulars->email_address .'">'. $siteRegulars->email_address .'</a>
                </div>
            </div>
            <div class="reservations">
                <div class="icon"><span class="flaticon-location-pin"></span></div>
                <div class="text">
                    <p>Location</p> '. strip_tags($siteRegulars->address) .'
                    <br>- 5 mins walking distance from Bus Stop<br>- 1 hour drive from Janakpur Airport<br> - 40 mins drive from Janaki Mandir
                </div>
            </div>
        </div>
   ';

    /*
    * Google map
    */
    if ($configRec->location_type == 1) {
        $resgmap .= '
            <iframe src="'. $configRec->location_map .'" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        ';
    } else {
        $resgmap .= '
            <img src="' . IMAGE_PATH . 'preference/locimage/' . $configRec->location_image . '" alt="' . $configRec->sitetitle . '" class="img-responsive">
        ';
    }


}

$jVars['module:office_information'] = $reslocinfo;
$jVars['module:office_map'] = $resgmap;
?>