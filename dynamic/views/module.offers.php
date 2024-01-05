<?php 
$resoffr='';
$resrandoffr='';

//     $offrRec = Offers::get_offer_by();
//     if($offrRec) {
//         $resoffr.='<div class="l_news_item owl-carousel">';

//                 foreach($offrRec as $offrRow) {
//                     $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
//                     if(file_exists($file_path) and !empty($offrRow->image)) {

//                         $resoffr.='<div class="item">
//                                         <a href="'.$offrRow->linksrc.'" class="news_img">
//                                             <img src="'.IMAGE_PATH.'offers/'.$offrRow->image.'" alt="" class="img-responsive">
//                                         </a>
//                                         <div class="news_text">
//                                             <a href="'.$offrRow->linksrc.'">
//                                                 <h4>'.$offrRow->title.'</h4>
//                                             </a>
//                                             <p>'.strip_tags($offrRow->content).'</p>
//                                             <a class="news_more" href="'.$offrRow->linksrc.'">Read more</a>
//                                         </div>
//                                     </div>';
//                     }
//                 }

//             $resoffr.='</div>';
//     }

//     // Rand offer
//     $randRec = Offers::get_offer_rand();
//     if(!empty($randRec)) {
//         $file_path = SITE_ROOT.'images/offers/'.$randRec->image;
//         if(file_exists($file_path) and !empty($randRec->image)) {
//             $linkTarget = ($randRec->linktype == 1)? ' target="_blank" ' : ''; 
//             $linksrc    = ($randRec->linktype != 1)? BASE_URL.$randRec->linksrc : $randRec->linksrc;
//             $linkstart  = ($randRec->linksrc!='')? '<a href="'.$linksrc.'" '.$linkTarget.'>' : '<a href="javascript:void(0);">';
//             $linkend    = ($randRec->linksrc!='')? '</a>' : '</a>' ;
//             $resrandoffr.='<div class="section panel">
//                 <div class="item fade">
//                     <div class="back" data-image="'.IMAGE_PATH.'offers/'.$randRec->image.'"></div>
//                     <div class="panel-button">
//                         <div class="button-container">
//                             '.$linkstart.$randRec->title.$linkend.'
//                             <span>Our Offer <i class="icon ion-ios-arrow-right"></i>
//                         </div>
//                     </div>
//                 </div>

//             </div>';
//         }
//     }

// $jVars['module:offers-list'] = $resoffr;
// $jVars['module:offers-rand'] = $resrandoffr;




$offers = $offersbread = "";
if (defined('OFFER_PAGE')) {


    $record = Offers::find_all();
    if (!empty($record)) {
        $count = $countsec = 0;
        foreach ($record as $recRow) {
            if(!empty($recRow->image)){

                $linkhref = ($recRow->linktype == 1) ? $recRow->linksrc : BASE_URL . $recRow->linksrc;

                $offers .= ' 
                <a
                    href="'. IMAGE_PATH . 'offers/' . $recRow->image .'"
                    data-fancybox="gallery"
                    data-caption="' . $recRow->title .'"
                    class="gallery-item room overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 ease-in-out"
                    data-aos="fade-up"
                >
                    <img
                    src="'. IMAGE_PATH . 'offers/' . $recRow->image .'"
                    alt="' . $recRow->title .'"
                    class="w-full h-96 transform transition-transform hover:scale-125 duration-300 ease-linear object-cover"
                    />
                </a>';
            }else{

                $linkhref = ($recRow->linktype == 1) ? $recRow->linksrc : BASE_URL . $recRow->linksrc;

                $offers .= ' 
                <a
                    href="'. $linkhref .'"
                    target="_blank"
                    class="gallery-item views overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 ease-in-out"
                    data-aos="fade-up"
                >
                    <iframe
                    src="' . $recRow->brief .'"
                    width="476"
                    height="476"
                    style="border: none; overflow: hidden"
                    scrolling="no"
                    frameborder="0"
                    allowfullscreen="true"
                    allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"
                    allowfullscreen="true"
                    class="w-full h-96 transform transition-transform hover:scale-125 duration-300 ease-linear object-cover"
                    ></iframe>
                </a>';
            }
            // else{

            //     $img = unserialize($recRow->image);
            //     $file_path = SITE_ROOT . 'images/services/' . $img[0];
            //     if (file_exists($file_path) && $img[0] != NULL) {
            //         $imglink = IMAGE_PATH . 'services/' . $img[0];
            //         $offers .= ' 

            //                 <div class="col-md-2">
            //                     <div class="single-offers" >
            //                         <img src="' . $imglink . '" alt = '. $recRow->title .'>
            //                         <h5>' . $recRow->title . '</h5>
            //                     </div>
            //                 </div>
            //         ';
            //     }
            // }
        }
    }


    // pr($siteRegulars);
    $offersbread='   
    <section
        class="bg-[url(\''.IMAGE_PATH.'preference/default/'. $siteRegulars->default_image.'\')] w-full h-[60vh] bg-fixed bg-bottom lg:bg-top xl:bg-bottom bg-no-repeat bg-contain xl:bg-cover"
    >
        <img
        src="'.IMAGE_PATH.'preference/default/'. $siteRegulars->default_image.'"
        alt="A beautiful night view"
        class="lg:hidden w-full h-[65vh] object-cover"
        />
    </section>
    ';
}

$jVars['module:offers-list'] = $offers;
$jVars['module:offers-bread'] = $offersbread;