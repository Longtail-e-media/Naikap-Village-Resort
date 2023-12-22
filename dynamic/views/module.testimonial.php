<?php 

/*
* Testimonial List Home page
*/
$restst = '';   
$tstRec = Testimonial::get_alltestimonial(9);
if (!empty($tstRec)) {
    $restst .= '';
    foreach ($tstRec as $tstRow) {
        $slink = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'javascript:void(0);';
        $target = !empty($tstRow->linksrc) ? 'target="_blank"' : '';
        $rating = '';
        for ($i = 0; $i < $tstRow->rating; $i++){
            $rating.='<i class="star-rating"></i>';
        }
        $restst .= '';
        
        
        if($tstRow->country){
        $restst .= '
                        <div class="item">
                            <span class="quote"><img src="img/quot.png" alt=""></span>
                            <p>' . strip_tags($tstRow->content) . '</p>
                            <div class="info">
                                <div class="author-img"> <img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt=""> </div>
                                <a href="'. $tstRow->country .'" target="_blank">
                                    <div class="cont"> <span>'. $rating .'</span>
                                        <h6>' . $tstRow->name . '</h6> <span>' . $tstRow->via_type . '</span>
                                    </div>
                                
                                </a>

                            </div>
                        </div>
                    ';
        }else{
            $restst .= '
            <div class="item">
                <span class="quote"><img src="img/quot.png" alt=""></span>
                <p>' . strip_tags($tstRow->content) . '</p>
                <div class="info">
                    <div class="author-img"> <img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt=""> </div>
                    <div class="cont"> <span>'. $rating .'</span>
                        <h6>' . $tstRow->name . '</h6> <span>' . $tstRow->via_type . '</span>
                    </div>
                </div>
            </div>
            ';
        }      
    }
    $restst .= '';
}

$jVars['module:testimonialList123'] = $restst;



/*
* Testimonial Header Title
*/
$tstHtitle='';

if(defined('HOME_PAGE')) {
    $tstHtitle.='<section class="promo_full">
    <div class="promo_full_wp">
        <div>
            <h3>What Guest say</h3>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="carousel_testimonials">';
    $tstRec = Testimonial::get_alltestimonial();
    if(!empty($tstRec)) {        
        foreach($tstRec as $tstRow) {
            $tstHtitle.='<div>
                                <div class="box_overlay">
                                    <div class="pic">
                                        <figure><img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'" class="img-circle"></figure>
                                        <h4>'.$tstRow->name.'</h4>
                                    </div>
                                    <div class="comment">
                                       '.strip_tags($tstRow->content).'
                                    </div>
                                </div><!-- End box_overlay -->
                            </div>';
        }
    $tstHtitle.='</div><!-- End carousel_testimonials -->
                    </div><!-- End col-md-8 -->
                </div><!-- End row -->
            </div><!-- End container -->
        </div><!-- End promo_full_wp -->
    </div><!-- End promo_full -->
    </section><!-- End section -->';
 }
}
$jVars['module:testimonial-title'] = $tstHtitle;


/*
* Testimonial Rand
*/
$tstHead='';

$tstRand = Testimonial::get_by_rand();
if(!empty($tstRand)) {
	$tstHead.='<!-- Quote | START -->
	<div class="section quote fade">
		<div class="center">
	    
	        <div class="col-1">
	        	<div class="thumb"><img src="'.IMAGE_PATH.'testimonial/'.$tstRand->image.'" alt="'.$tstRand->name.'"></div>
	            <h5><em>'.strip_tags($tstRand->content).'</em></h5>
	            <p><span><strong>'.$tstRand->name.', '.$tstRand->country.'</strong> (Via : '.$tstRand->via_type.')</span></p>
	        </div>
	        
	    </div>
	</div>
	<!-- Quote | END -->';
}

$jVars['module:testimonial-rand'] = $tstHead;


/*
* Testimonial List
*/
$restst='';
$tstRec = Testimonial::get_alltestimonial(9);
if(!empty($tstRec)) {
	$restst.='<div class="clients_slider owl-carousel" id="testi-slider">';

        foreach($tstRec as $tstRow) {
            $slink = !empty($tstRow->linksrc)?$tstRow->linksrc:'javascript:void(0);';
            $target = !empty($tstRow->linksrc)?'target="_blank"':'';

            
            $restst.='<div class="item">
                        <div class="media">
                        <div class="col-md-3 col-sm-3">
                            <div class="test-img">
                                <a href="'.$slink.'" '.$target.'>
                                    <img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'" class="img-responsive">
                                </a>
                            </div>
                            </div>
                            
                            <div class="col-md-9 col-sm-9">
                            <div class="media-body test">
                                <p><i>“</i>'.strip_tags($tstRow->content).'</p>
                                <a href="'.$slink.'" '.$target.'>
                                    <h4>'.$tstRow->name.'</h4>
                                </a>
                            </div>
                            </div>
                        </div>
                    </div>';
        }
    $restst.='</div>';
}

$jVars['module:testimonialList'] = $restst;
?>