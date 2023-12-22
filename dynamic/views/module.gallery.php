<?php
$reslgall = '';
$siteRegulars = Config::find_by_id(1);

$gallRec = Gallery::getParentgallery(2);
if (!empty($gallRec)) {
foreach ($gallRec as $gallRow) {
$childRec = GalleryImage::getGalleryImages($gallRow->id);
if (!empty($childRec)) {
$reslgall .= '';
foreach ($childRec as $childRow) {
$file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
if (file_exists($file_path) and !empty($childRow->image)) {
    $reslgall .= '
                <div class="item">
                    <!-- 3 columns -->
                    <div class="gallery-item">
                        <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" title="' . $childRow->title . '" class="img-zoom">
                            <div class="gallery-box">
                                <div class="gallery-img"> <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" class="img-fluid mx-auto d-block" alt="work-img"> </div>
                            </div>
                        </a>
                    </div>
                </div>
                    ';
}
}
$reslgall .= '';
}
}
}

$jVars['module:galleryHome'] = $reslgall;



$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;


/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = '';
$gallRectit = Gallery::getParentgallery();
shuffle($gallRectit);
if ($gallRectit) {
    
    $gallerylistbread .= '
    <div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="4" data-background="'.IMAGE_PATH.'preference/gallery/'. $siteRegulars->gallery_image.'">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-left caption mt-90">
                    <h5>Images</h5>
                    <h1>Our Gallery</h1>
                </div>
            </div>
        </div>
    </div> ';

    $thegal .= '
    <div class="gallery-page section-padding">
        <div class="main text-center">
            <div class="container">
                <ul class="list-unstyled row gallery-ul">
                    <li class="col-md active" data-class="all">ALL</li>
    ';
    foreach ($gallRectit as $row) {
        $thegal .= '<li class="col-md" data-class=".gall' . $row->id . '">' . $row->title . '</li>';
    }
    $thegal .= '  
            </ul>
        </div>
    ';

    $thegal .= '
        <div class="container" id="gallery">    ';
    foreach ($gallRectit as $row) {
        $gallRec = GalleryImage::getGalleryImages($row->id);
        foreach ($gallRec as $row1) {
            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $thegal .= ' 
                    <div class="col-md-4 images" data-class=".gall' . $row->id . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" style="display: block;">
                        <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->title . '">
                    </div>  
                    
                ';
            endif;
        }
    }
    $thegal .= '
                </div>
            </div>
        </div>    ';

}
$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-list-bred'] = $gallerylistbread;
