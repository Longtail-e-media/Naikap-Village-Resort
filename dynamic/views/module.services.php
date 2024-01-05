<?php
/*
* Service home list
*/
$rescont = $ressercont = '';
$i = 0;
$j = 0;
$subpkgRec = Services::getservice_list(4);
// var_dump($subpkgRec); die();
if (!empty($subpkgRec)) {

    foreach ($subpkgRec as $k => $v) {
        $imglink = '';
        if ($v->image != "a:0:{}") {
            $imageList = unserialize($v->image);
            $file_path = SITE_ROOT . 'images/services/' . $imageList[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'services/' . $imageList[0];
            }
        }
        $actv = ($i == 0) ? 'active' : '';
        $rescont .= '<li class="' . $actv . '">
                                            <a href="#coffe-shop' . $v->id . '" data-toggle="tab">
                                                <img src="' . $imglink . '">
                                                <h4>' . $v->title . '</h4>
                                            </a>
                                        </li>';
        $i++;
    }

    foreach ($subpkgRec as $k => $v) {
        $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($v->content));
        $actv1 = ($j == 0) ? 'active' : '';
        $ressercont .= '<div role="tabpanel" class="tab-pane fade in ' . $actv1 . '" id="coffe-shop' . $v->id . '">
                     
                                <p>' . substr(strip_tags($content[0]), 0, 300) . '
                                <br><a href="' . BASE_URL . 'service/' . $v->slug . '" title="">Read More</a></p>
                            </div>';
        $j++;
    }
}

$jVars['module:home-service-list'] = $rescont;
$jVars['module:home-service-content-list'] = $ressercont;


$restscont = '';

$servpkgRec = Services::find_all();
// var_dump($subpkgRec); die();
if (isset($_REQUEST['slug']) and !empty($_REQUEST['slug'])) {
    $slug = $_REQUEST['slug'];
} else {
    $slug = 'health-club';
}
if (!empty($subpkgRec)) {
    $i = 0;
    $j = 0;
    $restscont .= '<div class="tab-section bg-gray body-room-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center">
                            <h2 class="mb-0">Services</h2>
                            <ul class="pages-link">
                                <li><a href="' . BASE_URL . 'home">Home</a></li>
                                <li>/</li>
                                <li>Services</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="dining-tabs">
                        <ul class="nav nav-tabs">';
    foreach ($servpkgRec as $key => $serRec) {
        if ($slug == $serRec->slug) {
            $class = "active";
        } else {
            $class = "";
        }
        $actv = ($i == 0) ? 'active' : '';
        $restscont .= '<li class="' . $class . '">
                                <a href="#Sauna' . $serRec->id . '" id="' . $serRec->slug . '" role="tab" data-toggle="tab">' . $serRec->title . '<small class="d-block">' . $serRec->sub_title . '</small></a>
                            </li>';
        $i++;
    }
    $restscont .= '  </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="block small-padding both-padding page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="tab-content">';
    foreach ($servpkgRec as $key => $serRec) {
        $imageList = '';
        if ($serRec->image != "a:0:{}") {
            $imageList = unserialize($serRec->image);
        }
        if ($slug == $serRec->slug) {
            $class1 = "active";
        } else {
            $class1 = "";
        }
        $actv = ($j == 0) ? 'active' : '';
        $restscont .= '<div role="tabpanel" class="tab-pane fade in ' . $class1 . '" id="Sauna' . $serRec->id . '">
                                <div class="dining-detail">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="dining-detail-carousel">';
        // var_dump($imageList); die();
        if ($serRec->image != "a:0:{}") {
            foreach ($imageList as $key => $imgServ) {
                $restscont .= ' <div class="item">
											<img src="' . IMAGE_PATH . 'services/' . $imgServ . '" alt="' . $serRec->title . '" />
										</div>';
            }
        }
        $restscont .= ' </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="service-content">
                                               ' . substr(strip_tags($serRec->content), 0, 30000) . '
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>';
        $j++;
    }
    $restscont .= '</div>
                    </div>
                </div>
            </div><!-- container -->
        </div><!-- block -->';


}

$jVars['module:service-detail-list'] = $restscont;


$facility = $facilitybread = "";
if (defined('FACILITY_PAGE')) {


    $record = Services::getservice_list();
    if (!empty($record)) {
        $count = $countsec = 0;
        foreach ($record as $recRow) {
            if(!empty($recRow->icon)){
                $facility .= ' 
               
                <div
                    class="bg-[#f5f5dc] p-8 rounded-lg flex flex-col items-center justify-center transition-all transform duration-150 hover:scale-105 ease-linear shadow-lg hover:shadow-xl border border-gray-300"
                >
                    <i class="fas ' . $recRow->icon . ' text-5xl mb-4 text-gray-800"></i>
                    <h5 class="text-lg font-semibold text-gray-800">
                    ' . $recRow->title . '
                    </h5>
                </div>
                ';
            }
            // else{

            //     $img = unserialize($recRow->image);
            //     $file_path = SITE_ROOT . 'images/services/' . $img[0];
            //     if (file_exists($file_path) && $img[0] != NULL) {
            //         $imglink = IMAGE_PATH . 'services/' . $img[0];
            //         $facility .= ' 

            //                 <div class="col-md-2">
            //                     <div class="single-facility" >
            //                         <img src="' . $imglink . '" alt = '. $recRow->title .'>
            //                         <h5>' . $recRow->title . '</h5>
            //                     </div>
            //                 </div>
            //         ';
            //     }
            // }
        }
    }



    $facilitybread='   
   
    <section
        class="bg-[url(\''.IMAGE_PATH.'preference/facilities/'. $siteRegulars->facilities_image.'\')] w-full h-[60vh] bg-fixed bg-bottom lg:bg-top xl:bg-bottom bg-no-repeat bg-contain xl:bg-cover"
    >
        <img
        src="'.IMAGE_PATH.'preference/facilities/'. $siteRegulars->facilities_image.'"
        alt="A beautiful night view"
        class="lg:hidden w-full h-[65vh] object-cover"
        />
    </section>
    ';
}

$jVars['module:facility-list'] = $facility;
$jVars['module:facility-bread'] = $facilitybread;



$facility = "";

if (defined('HOME_PAGE')) {


    $record = Services::getservice_list();
    if (!empty($record)) {
        $count = $countsec = 0;
        foreach ($record as $recRow) {
            if(!empty($recRow->icon)){
                $facility .= ' 
                <div class="col-md-2">
                    <div class="single-facility" >
                        <span class="' . $recRow->icon . '"></span>
                        <h5>' . $recRow->title . '</h5>
                    </div>
                </div>
                ';
            }else{

                $img = unserialize($recRow->image);
                $file_path = SITE_ROOT . 'images/services/' . $img[0];
                if (file_exists($file_path) && $img[0] != NULL) {
                    $imglink = IMAGE_PATH . 'services/' . $img[0];
                    $facility .= ' 

                            <div class="col-md-2">
                                <div class="single-facility" >
                                    <img src="' . $imglink . '" alt = '. $recRow->title .'>
                                    <h5>' . $recRow->title . '</h5>
                                </div>
                            </div>
                    ';
                }
            }
        }
    }


}
$jVars['module:facility-list-home'] = $facility;


/*
* Home page 
*/
// $rescont_left = '';
// $rescont_right = '';


// if (defined('HOME_PAGE')) {

//     $rescont_left .= '';
//     $rescont_right .= '';


//     $subpkgRec = services::find_8();    

//     if (!empty($subpkgRec)) {
//         $rescont_left .= '';
//         foreach ($subpkgRec as $k => $v) {
//             $img_nm = unserialize($v->image);
//             $rescont_left .= '
//                         <div class="col-md-3">
//                             <div class="single-facility animate-box" data-animate-effect="fadeInUp">
//                                 <img src="' . IMAGE_PATH . '/services/' . $img_nm[0] . '" alt="' . $v->title . '">
//                                 <h5>' . $v->title . '</h5>
//                                 <div class="facility-shape"><img src="' . IMAGE_PATH . '/services/' . $img_nm[0] . '" alt="' . IMAGE_PATH . '/services/' . $img_nm[0] . '"></div>
//                             </div>
//                         </div>
//                         ';

//         }
//         $rescont_left .= '';
//         $rescont_right .= '';

//     }
// }
// // pr($rescont_left);
// $jVars['module:facilities-homepage'] = $rescont_left;
?>