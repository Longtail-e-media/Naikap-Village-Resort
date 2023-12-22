<?php
$booking_code = Config::getField('hotel_code', true);
$siteRegulars = Config::find_by_id(1);


/*
* Home accmodation list
*/
$reshmpkg = '';
$imageList = '';

// if (defined('HOME_PAGE')) {
//     $acid = Package::get_accommodationId();
//     $pkgRec = Package::find_by_id($acid);
//     if (!empty($pkgRec)) {
//         $subRec = Subpackage::getPackage_limit($acid);

//         if (!empty($subRec)) {
//             $imglink = '';
//             $reshmpkg .= '';

//             $reshmpkg .= "";
//             foreach ($subRec as $subRow) {
//                 $features_of_rooms='';
//                 if(!empty($subRow->class_room_style)){
//                 $features_of_rooms = '<div class="tags featured">'. $subRow->class_room_style  .'</div>';
//                 }

//                 $img123 = unserialize($subRow->image);

//                 if (!empty($subRow->image)) {

//                     $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
//                 } else {
//                     $imglink = IMAGE_PATH . 'static/gallery1.jpg';
//                 }
//                 $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
//                 if (file_exists($file_path) and !empty($subRow->image)) {
//                                 $reshmpkg .= '
//                             <div class="col-md-4 room-item wow fadeInUp" data-wow-delay=".4s">
//                                <div class="inner">
//                                    '. $features_of_rooms .'
//                                    <img src="' . $imglink . '" class="img-responsive" alt="' . $subRow->title . '">
//                                    <h3>' . $subRow->title . '</h3>
//                                    <div class="price_from">Start From <span>'. $subRow->currency .' ' . $subRow->onep_price . '++</span>/night</div>
//                                    <div class="spacer-half"></div>
//                                    <a href="' . BASE_URL . $subRow->slug . '" class="btn-detail">View Details</a>
//                                </div>
//                            </div>
//                                 ';
                            
//                 }
//             }
//             $reshmpkg .= '';
//         }
//     }
// }




$jVars['module:home-accommodation'] = $reshmpkg;





/*
* Home sub package list
*/
$newpkg = '';

if (defined('HOME_PAGE')) {
//$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
//$pkgRec = Package::getPackage();
//if (!empty($pkgRec)) {

    /* foreach($pkgRec as $pkgRow) {
        $imglink = '';*/
    /* if ($pkgRow->banner_image != "a:0:{}") {
         $imageList = unserialize($pkgRow->banner_image);
         $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[0];
         if (file_exists($file_path)) {
             $imglink = IMAGE_PATH . 'package/banner/' . $imageList[0];
         }
     } */
    // if(($pkgRow->type)==0) {
    $newpkg .= '<div class="col-sm-6">
                <div class="mosaic_container">
                     <a href="' . BASE_URL . 'page/about-us">
                    <img src="' . BASE_URL . 'template/web/img/mosaic_1.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Experience Peninsula</span>
                    </a>
                </div>
            </div>';
    //}else{
    $newpkg .= '<div class="col-sm-6">
         
         <div class="col-xs-12">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'services">
                        <img src="' . BASE_URL . 'template/web/img/mosaic_2.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Services & Faciities</span>
                        </a>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'rooms">
                        <img src="' . BASE_URL . 'template/web/img/room.jpg" alt="rooms" class="img-responsive add_bottom_30"><span class="caption_2">
Accommodation</span>
                        </a>
                    </div>
                </div>
                  <div class="col-xs-6">
                     <a href="' . BASE_URL . 'dining">
                    <div class="mosaic_container">
                        <img src="' . BASE_URL . 'template/web/img/dining.jpg" alt="dining" class="img-responsive add_bottom_30"><span class="caption_2">Dining & Bar</span>
                    </div>
                    </a>
                </div>
                
                  </div>
                ';

    //}
    //}
//}
}
$jVars['module:newpkg'] = $newpkg;


/////HOmepage room section
$reshplist = $pakagehometype =$roomlist =  '';
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id(1);
    $pkgRec = Subpackage::getPackage_limits(1, 6);
    // pr($pkgRec);
    if (!empty($pkgRec)) {
        $c=0;

        foreach ($pkgRec as $key => $subpkgRow) {
            $features ='';
            $imageList = '';
            $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';

            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
                $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                if (file_exists($file_path) and !empty($imageList[0])) {
                    $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                }else {
                    $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                }
            }else {
                $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
            }


            $saveRec = unserialize($subpkgRow->feature);
            // pr($saveRec);
                $count = 1;
                // if ($saveRec != null) {
                //     $featureList = $saveRec[113][1];
                //     if (!empty($featureList)) {
                //         $icoRec = '';
                //         $i=0;
                //         $feature_list ='';
                //         foreach ($featureList as $fetRow) {
                //             $icoRec = Features::get_by_id($fetRow);
                            
                //             $feature_list .= '<li><i class="ti-check"></i> ' . $icoRec->title . '</li>';  
                //             $i++;
                //             if($i%2==0){
                //                 $features .= '
                //                 <div class="col-md-4">
                //                     <ul>
                //                         '. $feature_list .'
                //                     </ul>
                //                 </div>';
                //                 $feature_list='';
                //             }
                                
                //                 if ($count++ == 6) break;

                //         }
                //     }

                // }


        // pr($imglink);
           $left='';
            ($c % 2 == 0)?$left = ' left ':'';
            $roomlist .= '
               

                <div class="item">
                    <div class="position-re o-hidden"> <img src="'. $imglink .'" alt=""> </div> <span class="category"><a href="#">Book</a></span>
                    <div class="con">
                        <h6><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->onep_price . $subpkgRow->currency .' / Night</a></h6>
                        <h5><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->title .'</a> </h5>
                        <div class="line"></div>
                        <div class="row facilities">
                            <div class="col col-md-7">
                                <ul>
                                    <li><i class="flaticon-bed"></i></li>
                                    <li><i class="flaticon-bath"></i></li>
                                    <li><i class="flaticon-breakfast"></i></li>
                                    <li><i class="flaticon-towel"></i></li>
                                </ul>
                            </div>
                            <div class="col col-md-5 text-end">
                                <div class="permalink"><a href="' . BASE_URL . $subpkgRow->slug . '">Details <i class="ti-arrow-right"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                ';
                $c++;

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist'] = $roomlist;
$jVars['module:home-package-type-list'] = $pakagehometype;




/////HOmepage other service section
$reshplist = $pakagehometype =$roomlist =  '';
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id(2);
    $pkgRec = Subpackage::getPackage_limits(2, 6);

    // pr($pkgRec);
    if (!empty($pkgRec)) {
        $c=0;

        foreach ($pkgRec as $key => $subpkgRow) {
            $features ='';
            $imageList = '';
            $imglink = BASE_URL . 'template/web/img/pricing/1.jpg';

            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
                $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                if (file_exists($file_path) and !empty($imageList[0])) {
                    $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                }else {
                    $imglink = BASE_URL . 'template/web/img/pricing/1.jpg';
                }
            }else {
                $imglink = BASE_URL . 'template/web/img/pricing/1.jpg';
            }


            $saveRec = unserialize($subpkgRow->feature);
            // pr($saveRec);
                $count = 1;
                // if ($saveRec != null) {
                //     $featureList = $saveRec[113][1];
                //     if (!empty($featureList)) {
                //         $icoRec = '';
                //         $i=0;
                //         $feature_list ='';
                //         foreach ($featureList as $fetRow) {
                //             $icoRec = Features::get_by_id($fetRow);
                            
                //             $feature_list .= '<li><i class="ti-check"></i> ' . $icoRec->title . '</li>';  
                //             $i++;
                //             if($i%2==0){
                //                 $features .= '
                //                 <div class="col-md-4">
                //                     <ul>
                //                         '. $feature_list .'
                //                     </ul>
                //                 </div>';
                //                 $feature_list='';
                //             }
                                
                //                 if ($count++ == 6) break;

                //         }
                //     }

                // }


        // pr($imglink);
           $left='';
            ($c % 2 == 0)?$left = ' left ':'';
            $roomlist .= '
            

                <div class="pricing-card">
                    <img src="'. $imglink .'" alt="'. $subpkgRow->title .'">
                    <div class="desc">
                        <div class="name"><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->title .'</a></div>
                    </div>
                </div>
                ';
                $c++;

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist-service'] = $roomlist;
$jVars['module:home-package-type-list-service'] = $pakagehometype;


$roomlist = $roombread = '';

if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $pkgRow = Package::find_by_slug($slug);

    $imglink = IMAGE_PATH . 'preference/default/'. $siteRegulars->default_image;
    $pkgRowImg = $pkgRow->banner_image;
    if ($pkgRowImg != "a:0:{}") {
        $pkgRowList = unserialize($pkgRowImg);
        $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
        if (file_exists($file_path) and !empty($pkgRowList[0])) {
            $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
        }else {
            $imglink = IMAGE_PATH . 'preference/default/'. $siteRegulars->default_image;
        }
    }else {
        $imglink = IMAGE_PATH . 'preference/default/'. $siteRegulars->default_image;
    }
    // pr($pkgRow);
    $roombread .= ' 
        <div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="4" data-background="' . $imglink . '">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-left caption mt-90">
                        <h5>' . $pkgRow->sub_title . '</h5>
                        <h1>' . $pkgRow->title . '</h1>
                    </div>
                </div>
            </div>
        </div>';

    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);

    if (!empty($pkgRec)) {
        // pr($pkgRec);
        if($pkgRow->id ==1){
            $c=1;

            foreach ($pkgRec as $key => $subpkgRow) {
                $features ='';
                $imageList = '';
                $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';

                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                    if (file_exists($file_path) and !empty($imageList[0])) {
                        $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                    }else {
                        $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                    }
                }else {
                    $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                }


                $saveRec = unserialize($subpkgRow->feature);
                // pr($saveRec);
                    $count = 1;
                    // if ($saveRec != null) {
                    //     $featureList = $saveRec[113][1];
                    //     if (!empty($featureList)) {
                    //         $icoRec = '';
                    //         $i=0;
                    //         $feature_list ='';
                    //         foreach ($featureList as $fetRow) {
                    //             $icoRec = Features::get_by_id($fetRow);
                                
                    //             $feature_list .= '<li><i class="ti-check"></i> ' . $icoRec->title . '</li>';  
                    //             $i++;
                    //             if($i%2==0){
                    //                 $features .= '
                    //                 <div class="col-md-4">
                    //                     <ul>
                    //                         '. $feature_list .'
                    //                     </ul>
                    //                 </div>';
                    //                 $feature_list='';
                    //             }
                                    
                    //                 if ($count++ == 6) break;

                    //         }
                    //     }

                    // }



            $left='';
                ($c % 2 == 0)?$left = ' left ':'';
                $roomlist .= '
                    <div class="col-md-4">
                        <div class="item">
                            <div class="position-re o-hidden"> <img src="'. $imglink .'" alt=""> </div><span class="category"><a href="#">Book</a></span>
                            <div class="con">
                                <h6><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->onep_price . $subpkgRow->currency .' / Night</a></h6>
                                <h5><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->title .'</a> </h5>
                                <div class="line"></div>
                                <div class="row facilities">
                                    <div class="col col-md-7">
                                        <ul>
                                            <li><i class="flaticon-bed"></i></li>
                                            <li><i class="flaticon-bath"></i></li>
                                            <li><i class="flaticon-breakfast"></i></li>
                                            <li><i class="flaticon-towel"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col col-md-5 text-end">
                                        <div class="permalink"><a href="' . BASE_URL . $subpkgRow->slug . '">Details <i class="ti-arrow-right"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    ';
                    $c++;

            }
        }else{
            $c=1;

            foreach ($pkgRec as $key => $subpkgRow) {
                $features ='';
                $imageList = '';
                $imglink = BASE_URL . 'template/web/img/pricing/2.jpg';

                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                    if (file_exists($file_path) and !empty($imageList[0])) {
                        $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                    }else {
                        $imglink = BASE_URL . 'template/web/img/pricing/2.jpg';
                    }
                }else {
                    $imglink = BASE_URL . 'template/web/img/pricing/2.jpg';
                }


                $saveRec = unserialize($subpkgRow->feature);
                // pr($saveRec);
                    $count = 1;
                    // if ($saveRec != null) {
                    //     $featureList = $saveRec[113][1];
                    //     if (!empty($featureList)) {
                    //         $icoRec = '';
                    //         $i=0;
                    //         $feature_list ='';
                    //         foreach ($featureList as $fetRow) {
                    //             $icoRec = Features::get_by_id($fetRow);
                                
                    //             $feature_list .= '<li><i class="ti-check"></i> ' . $icoRec->title . '</li>';  
                    //             $i++;
                    //             if($i%2==0){
                    //                 $features .= '
                    //                 <div class="col-md-4">
                    //                     <ul>
                    //                         '. $feature_list .'
                    //                     </ul>
                    //                 </div>';
                    //                 $feature_list='';
                    //             }
                                    
                    //                 if ($count++ == 6) break;

                    //         }
                    //     }

                    // }



            $left='';
                ($c % 2 == 0)?$left = ' left ':'';
                $roomlist .= '
                    <div class="col-md-4">
                        <div class="item">
                            <div class="position-re o-hidden"> <img src="'. $imglink .'" alt=""> </div>
                            <div class="con">
                                <h5><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->title .'</a> </h5>
                                <div class="line"></div>
                                <div class="row facilities">
                                    <div class="col col-md-7">
                                        <ul>
                                            <li><i class="flaticon-bed"></i></li>
                                            <li><i class="flaticon-bath"></i></li>
                                            <li><i class="flaticon-breakfast"></i></li>
                                            <li><i class="flaticon-towel"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col col-md-5 text-end">
                                        <div class="permalink"><a href="' . BASE_URL . $subpkgRow->slug . '">Details <i class="ti-arrow-right"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    ';
                    $c++;

            }
        }
    }
}

$jVars['module:list-package-room'] = $roomlist;
$jVars['module:list-package-room-bred'] = $roombread;


/**
 *      Package Record
 */
$resubpkgDetail = $resubpkgbann = $bcont = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $id = !empty($_REQUEST['id']) ? addslashes($_REQUEST['id']) : '';
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    $pkgRec = Package::find_by_id($subpkgRec->type);
    //echo "<pre>";print_r($slug);die();
    $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
    $otherPacs = Subpackage::get_relatedpkg($subpkgRec->type, $subpkgRec->id, 12);


    $pgkRow = Package::find_by_id(3);
    if (!empty($subpkgRec)) {
        //$resubpkgbann.='';
        foreach ($gallRec as $row) {
            $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
            if (file_exists($file_path) and !empty($row->image)):

                $resubpkgbann .= ' <div><img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '" alt="' . $row->title . '"><div class="caption cpation_room">
     <h3>
     <ul>
     <li><a href="' . BASE_URL . 'home">Home</a></li>
     <li><a href="' . BASE_URL . $pkgRec->slug . '">' . $pkgRec->title . '</a></li>
     <li>' . $subpkgRec->title . '</li>
     </ul>
     </h3>
     </div></div>';
            endif;

        }


        $pkgType = Package::field_by_id($subpkgRec->type, 'type');
        /* if(!empty($pkgType)) {
                         */
        $subpkgImg = $subpkgRec->image;

        if ($pkgType == 1) {
            $resubpkgDetail .= '<h1 class="main_title_in">' . $subpkgRec->short_title . '</h1>
          <div class="container add_bottom_60">
          
          <div class="row">
          <div class="col-md-8" id="room_detail_desc">';

            $resubpkgDetail .= ' <div id="single_room_feat">
          <ul>';
            $saveRec = unserialize($subpkgRec->feature);
            $count = 1;
            // if ($saveRec != null) {
            //     $featureList = $saveRec[47][1];
            //     if ($featureList) {


            //         foreach ($featureList as $fetRow) {

            //             $icoRec = Features::get_by_id($fetRow);

            //             if (!empty($icoRec->icon)) {
            //                 $resubpkgDetail .= ' <li><i class="' . $icoRec->icon . '"></i>' . $icoRec->title . '</li>';


            //             } else {
            //                 $resubpkgDetail .= ' <li><img src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" style=" width: 25px; height: 25px;margin-right:7px;" alt="' . $icoRec->title . '">' . $icoRec->title . '</li>';
            //             }

            //         }

            //     }
            // }


            $resubpkgDetail .= '
       
       </ul>
       </div>  <div class="row">
       <div class="col-md-3">
       <h3>Description</h3>
       </div>
       <div class="col-md-9">
       
       ' . $subpkgRec->content . '
       
       </div><!-- End col-md-9  -->
       </div><!-- End row  -->

       <div class="row">
       <div class="col-md-3">
       <h3>Occupancy | Tariff</h3>
       </div>
       <div class="col-md-9">
       <table class="table table-striped">
       <tbody>
       <tr>
       <td>Single Occupancy</td>
       <td>' . $subpkgRec->currency . ' ' . $subpkgRec->onep_price . '</td>
       </tr>
       <tr>
       <td>Double Occupancy</td>
       <td>' . $subpkgRec->currency . ' ' . $subpkgRec->twop_price . '</td>
       </tr>
       <tr>
       <td>Extra Bed Charge</td>
       <td> ' . $subpkgRec->currency . ' ' . $subpkgRec->threep_price . '</td>
       </tr>
       </tbody>
       </table>
       </div>
       </div> </div>
       <div class="col-md-4" id="sidebar">
       <div class="theiaStickySidebar">
       <div class="box_style_1">
       <div id="message-booking"></div>
      <form action="" target="_blank" autocomplete="off" id="hotel_booking" data-url="' . BASE_URL . 'result.php">
       
         <input type="hidden" name="hotel_code" value="2AXhJ6">
       <div class="row">
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <label>Arrival date</label>
       <input class="startDate1 form-control datepick" type="text" data-field="date" data-startend="start" data-startendelem=".endDate1" readonly placeholder="Arrival" id="checkin" name="hotel_check_in">
       <span class="input-icon"><i class="icon-calendar-7"></i></span>
       </div>
       </div>
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <label>Departure date</label>
       <input class="endDate1 form-control datepick" type="text" data-field="date" data-startend="end" data-startendelem=".startDate1" readonly placeholder="Departure" id="checkout" name="hotel_check_out">
       <span class="input-icon"><i class="icon-calendar-7"></i></span>
       </div>
       </div>
       </div><!-- End row -->

       <div class="row">
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <input type="submit" value="Book now" class="btn_full" id="submit-booking">
       </div>
       </div>
       </div>
       </form>
       ' . $jVars['module:room-location'] . '
       </div><!-- End box_style -->
       </div><!-- End theiaStickySidebar -->
       </div><!-- End col -->
       
       </div><!-- End row -->
       
       </div><!-- End container -->';
        }


    }
}
$jVars['module:form-controll'] = $bcont;
$jVars['module:sub-package-banner'] = $resubpkgbann;
// $jVars['module:sub-package-detail'] = $resubpkgDetail;








/*
* Sub package 
*/
$resubpkgDetail = '';
$subimg = '';
$imageList = '';
$features_list='';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
     $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
     $booking_code = Config::getField('hotel_code', true);
    if (!empty($subpkgRec)) {
        /*******        FOR ROOM DETAIL             ******************** */
        if ($subpkgRec->type == 1) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            
            $pkgRec = Package::find_by_id($subpkgRec->type);

            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                               // $active=($count==0)?'active':'';
                    $subpkg_carousel .= '<div class="text-center item bg-img" data-overlay-dark="3" data-background="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'"></div>';
                    

                endif;

            
            }

            if (!empty($subpkgRec->feature)) {
                $ftRec = unserialize($subpkgRec->feature);
                if (!empty($ftRec)) {

                    foreach ($ftRec as $k => $v) {
                        $features_list='';
                        $features_title='';
                        empty($v[0][0])?$features_title='Amenities':$features_title=$v[0][0];
                        // $resubpkgDetail .= '<h3 class="room_d_title">' . $v[0][0] . '</h3>';
                        if (!empty($v[1])) {
                            $resubpkgDetail .= '';
                            foreach ($v[1] as $kk => $vv) {
                                $sfetname = Features::find_by_id($vv);

                                $features_list .= '
                                    <li>
                                    <div class="page-list-icon"> <span class="' . $sfetname->icon . '"></span> </div>
                                        <div class="page-list-text">
                                            <p>' . $sfetname->title . '</p>
                                        </div>
                                    </li>';
                            }
                            $resubpkgDetail .= '';
                        }

                    }
                }
                $resubpkgDetail .= '';
            }


            // pr($subpkgRec);
            $resubpkgDetail .= '
                <header class="header slider rooms2">
                    <div class="owl-carousel owl-theme">
                        <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                        '. $subpkg_carousel .'
                    </div>
                    <!-- arrow down -->
                    <div class="arrow bounce text-center">
                        <a href="#" data-scroll-nav="1" class=""> <i class="ti-arrow-down"></i> </a>
                    </div>
                </header>

                <section class="rooms-page section-padding" data-scroll-index="1">
                    <div class="container">
                        <!-- project content -->
                        <div class="row">
                            <div class="col-md-12"> 
                                <div class="section-subtitle">'. $subpkgRec->short_title .'</div>
                                <div class="section-title">'. $subpkgRec->title .'</div>
                            </div>
                            <div class="col-md-8">

                            '. $subpkgRec->content .'
                            </div>
                            <div class="col-md-4">
                                <div class="booking-box room-booking-box">
                                    <div class="head-box">
                                        <h6>Rooms &amp; Suites</h6>
                                        <h4>Hotel Booking Form</h4>
                                    </div>
                                    <div class="booking-inner clearfix">
                                        <form action="#" class="form1 clearfix">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="input1_wrapper">
                                                        <label>Check in</label>
                                                        <div class="input1_inner">
                                                            <input type="text" class="form-control input datepicker hasDatepicker" placeholder="Check in" id="dp1689754049366">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="input1_wrapper">
                                                        <label>Check out</label>
                                                        <div class="input1_inner">
                                                            <input type="text" class="form-control input datepicker hasDatepicker" placeholder="Check out" id="dp1689754049367">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="select1_wrapper">
                                                        <label>Adults</label>
                                                        <div class="select1_inner">
                                                            <select class="select2 select select2-hidden-accessible" style="width: 100%" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                                                <option value="0" data-select2-id="3">Adults</option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="select1_wrapper">
                                                        <label>Children</label>
                                                        <div class="select1_inner">
                                                            <select class="select2 select select2-hidden-accessible" style="width: 100%" data-select2-id="4" tabindex="-1" aria-hidden="true">
                                                                <option value="0" data-select2-id="6">Children</option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <button type="submit" class="btn-form1-submit mt-15">Book Now</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <h6>Amenities</h6>
                                <ul class="list-unstyled page-list mb-30">
                                    '.$features_list.'
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>';
                
                if (!empty($relPacs)) {

                $resubpkgDetail .= '';
                $imglink = '';

                $resubpkgDetail .=  '';     
                $other_room_carousel = '';
                foreach ($relPacs as $relpac) {

                    $img = unserialize($relpac->image);
                    //added from above
                    if (!empty($img[0])) {
                        $file_path = SITE_ROOT . 'images/subpackage/' . $img[0];

                        if (file_exists($file_path)) {
                            $imglink = IMAGE_PATH . 'subpackage/' . $img[0];
                        } else {
                            $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                        }
                    } else {
                        $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                    }
                    // pr($imglink);


                    if (file_exists($file_path) and !empty($relpac->image)) {
                        $imageList = '';

                        $other_room_carousel .= '
                             <div class="item">
                                <div class="position-re o-hidden"> <img src="' . $imglink . '" alt=""> </div> <span class="category"><a href="#">Book</a></span>
                                <div class="con">
                                    <h6><a href="' . BASE_URL . $relpac->slug . '">'. $relpac->onep_price . $relpac->currency .' / Night</a></h6>
                                    <h5><a href="' . BASE_URL . $relpac->slug . '">' . $relpac->title . '</a> </h5>
                                    <div class="line"></div>
                                    <div class="row facilities">
                                        <div class="col col-md-7">
                                            <ul>
                                                <li><i class="flaticon-bed"></i></li>
                                                <li><i class="flaticon-bath"></i></li>
                                                <li><i class="flaticon-breakfast"></i></li>
                                                <li><i class="flaticon-towel"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col col-md-5 text-end">
                                            <div class="permalink"><a href="' . BASE_URL . $relpac->slug . '">Details <i class="ti-arrow-right"></i></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             ';
                    }

                }
                $resubpkgDetail .= '			
                            <section class="rooms1 section-padding bg-blck">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="section-subtitle"><span>Luxury Hotel</span></div>
                                            <div class="section-title"><span>Similar Rooms</span></div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="owl-carousel owl-theme">
                                                '. $other_room_carousel. '
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                ';
            }

        }



        /********For service inner page ***************/
        if ($subpkgRec->type == 2) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            
            $pkgRec = Package::find_by_id($subpkgRec->type);

            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                               // $active=($count==0)?'active':'';
                    $subpkg_carousel .= '<div class="text-center item bg-img" data-overlay-dark="3" data-background="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'"></div>';
                    

                endif;

            
            }

            // pr($subpkgRec);
            $resubpkgDetail .= '
            <header class="header slider rooms2">
                <div class="owl-carousel owl-theme">
                    <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                    '. $subpkg_carousel .'
                </div>
                <!-- arrow down -->
                <div class="arrow bounce text-center">
                    <a href="#" data-scroll-nav="1" class=""> <i class="ti-arrow-down"></i> </a>
                </div>
            </header>





            <section class="rooms-page section-padding" data-scroll-index="1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-left"> 
                            <div class="section-subtitle">'. $subpkgRec->short_title .'</div>
                            <div class="section-title">'. $subpkgRec->title .'</div>
                        </div>
                        '. $subpkgRec->content .'
                    </div>
                </div>
            </section>' . $subpkgRec->below_content;
            if($subpkgRec->id == 40){
                $resubpkgDetail.='    
                    <section class="section-padding bg-cream">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="booking-box hall-bokng">
                                        <div class="head-box">
                                            <h4>Events Booking Form</h4>
                                        </div>
                                        <div class="booking-inner clearfix">
                                            <form action="#" class="form1 clearfix" id="frm_contact">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="input1_wrapper">
                                                            <label>Full Name</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Full Name" name="name">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Email</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Email Address" name="email">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Contact</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Contact No." name="phone">
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn-form1-submit mt-15">Submit</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>';
            }
        }
        /**FOR DEFAULT SUBPACKAGES */
        

        if (($subpkgRec->type != 2) && ($subpkgRec->type != 1)) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            
            $pkgRec = Package::find_by_id($subpkgRec->type);

            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                               // $active=($count==0)?'active':'';
                    $subpkg_carousel .= '<div class="text-center item bg-img" data-overlay-dark="3" data-background="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'"></div>';
                    

                endif;

            
            }

            // pr($subpkgRec);
            $resubpkgDetail .= '
            <header class="header slider rooms2">
                <div class="owl-carousel owl-theme">
                    <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                    '. $subpkg_carousel .'
                </div>
                <!-- arrow down -->
                <div class="arrow bounce text-center">
                    <a href="#" data-scroll-nav="1" class=""> <i class="ti-arrow-down"></i> </a>
                </div>
            </header>





            <section class="rooms-page section-padding" data-scroll-index="1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-left"> 
                            <div class="section-subtitle">'. $subpkgRec->short_title .'</div>
                            <div class="section-title">'. $subpkgRec->title .'</div>
                        </div>
                        '. $subpkgRec->content .'
                    </div>
                </div>
            </section>' . $subpkgRec->below_content;
            if($subpkgRec->id == 40){
                $resubpkgDetail.='    
                    <section class="section-padding bg-cream">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="booking-box hall-bokng">
                                        <div class="head-box">
                                            <h4>Events Booking Form</h4>
                                        </div>
                                        <div class="booking-inner clearfix">
                                            <form action="#" class="form1 clearfix" id="frm_contact">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="input1_wrapper">
                                                            <label>Full Name</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Full Name" name="name">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Email</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Email Address" name="email">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Contact</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Contact No." name="phone">
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn-form1-submit mt-15">Submit</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>';
            }
        }



    }
}


     


            $jVars['module:sub-package-detail'] = $resubpkgDetail;






/*-------------------- FOR HOMEPAGE INFO --------------*/

$result = $imageList = '';
if (defined('HOME_PAGE')) {
    $result = '';
    $subpkgRec = Subpackage::get_relatedpkg(2);
    if (!empty($subpkgRec)) {
        $c=1;

        foreach($subpkgRec as $subpkgRow){
            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
            }

            if (!empty($imageList)) {
                $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                } else {
                    $imglink = IMAGE_PATH . 'template/web/img/slider/2.jpg';
                }
            } else {
                $imglink = IMAGE_PATH . 'template/web/img/slider/2.jpg';
            }

            if(!empty($imglink[0])){
                //  pr($subpkgRow);
                if($c%2 == 0){
                    $result .= '
                            <div class="row">
                                <div class="col-md-6 p-l0 animate-box" data-animate-effect="fadeInLeft">
                                    <div class="img left">
                                        <a href="'. BASE_URL . $subpkgRow->slug .'"><img src="' . $imglink . '" alt="'. $subpkgRow->title .'"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 p-0 bg-cream valign animate-box" data-animate-effect="fadeInRight">
                                    <div class="content">
                                        <div class="cont text-left">
                                            <div class="info">
                                                <h6>'. $subpkgRow->short_title .'</h6>
                                            </div>
                                            <h4>'. $subpkgRow->title .'</h4>
                                            <p>'. $subpkgRow->detail .'</p>
                                            <div class="butn-dark"><a href="'. BASE_URL . $subpkgRow->slug .'"><span>Learn More</span></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>';
                }else{
                    $result .= '
                        <div class="row">
                        <div class="col-md-6 bg-cream p-0 order2 valign animate-box" data-animate-effect="fadeInLeft" style="padding-left: 0px;">
                            <div class="content">
                                    <div class="cont text-left">
                                        <div class="info">
                                            <h6>'. $subpkgRow->short_title .'</h6>
                                        </div>
                                        <h4>'. $subpkgRow->title .'</h4>
                                        <p>'. $subpkgRow->detail .'</p>
                                        <div class="butn-dark"><a href="'. BASE_URL . $subpkgRow->slug .'"><span>Learn More</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 p-r0 order1 animate-box" data-animate-effect="fadeInRight">
                                <div class="img left">
                                    <a href="'. BASE_URL . $subpkgRow->slug .'"><img src="' . $imglink . '" alt="'. $subpkgRow->title .'"></a>
                                </div>
                            </div>
                        </div>';
                }
                $c++;


            }
        }
    }
}

$jVars['module:homepage-info'] = $result;
