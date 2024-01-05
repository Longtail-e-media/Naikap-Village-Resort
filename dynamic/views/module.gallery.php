<?php
$reslgall = $home_gal_list ='';
$siteRegulars = Config::find_by_id(1);
$gallRec = Gallery::getParentgallery(2);
if (!empty($gallRec)) {
foreach ($gallRec as $gallRow) {
    $home_gal_list .='<button
    class="filter-btn block bg-gray-300 text-gray-800 py-2 text-center rounded-md"
    data-filter="'.$gallRow->title.'"
  >
    '.$gallRow->title.'
  </button>';

$childRec = GalleryImage::getGalleryImages($gallRow->id);
if (!empty($childRec)) {
$reslgall .= '';
foreach ($childRec as $childRow) {
$file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
if (file_exists($file_path) and !empty($childRow->image)) {
   
    
    
    $reslgall .= '
    <a
            href="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '"
            data-fancybox="gallery"
            data-caption="' . $gallRow->title . ' ' . $childRow->id . '"
            class="gallery-item ' . $gallRow->title . ' overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 ease-in-out"
          >
            <img
              src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '"
              alt="' . $gallRow->title . ' ' . $childRow->id . '"
              class="w-full h-auto all transition-all hover:scale-125 duration-300 ease-linear"
            />
          </a>

                    ';
}
}
$home_gal_list .='';
$reslgall .= '';
}
}
}
$jVars['module:galleryHomelist'] = $home_gal_list;
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
$thegal = $gallerylistbread = $gal_list = $gal_detail ='';
$gallRectit = Gallery::getParentgallery();
shuffle($gallRectit);
if ($gallRectit) {
    
    $gallerylistbread .= '
    
    <section
        class="bg-[url(\''.IMAGE_PATH.'preference/gallery/'. $siteRegulars->gallery_image.'\')] w-full h-[60vh] bg-fixed bg-bottom lg:bg-top xl:bg-bottom bg-no-repeat bg-contain xl:bg-cover"
    >
        <img
        src="'.IMAGE_PATH.'preference/gallery/'. $siteRegulars->gallery_image.'"
        alt="A beautiful night view"
        class="lg:hidden w-full h-[60vh] object-cover"
        />
    </section>
    ';

    $thegal .= '';

    foreach ($gallRectit as $row) {
        $gal_list .= '
        <button
            class="filter-btn block bg-gray-300 text-gray-800 py-2 text-center rounded-md"
            data-filter="gall' . $row->id . '"
        >
        ' . $row->title . '
        </button>';
    }


    foreach ($gallRectit as $row) {
        $gallRec = GalleryImage::getGalleryImages($row->id);
        foreach ($gallRec as $row1) {
            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $gal_detail .= ' 

                    <a
                    href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '"
                    data-fancybox="gallery"
                    data-caption="views 4"
                    class="gallery-item gall' . $row->id . ' overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 ease-in-out"
                    
                    >
                    <img
                        src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '"
                        alt="views 4"
                        class="w-full h-auto transform transition-transform hover:scale-125 duration-300 ease-linear"
                    />
                    </a>
                ';
            endif;
        }
    }
    $thegal .= '
    <main class="my-10 p-4">
        <!-- <div
        class="flex flex-col items-center justify-center"
        data-aos="fade-right"
        data-aos-offset="300"
        data-aos-easing="ease-in-sine"
        > -->
        <div class="flex flex-col items-center justify-center">
        <h2 class="text-2xl md:text-4xl font-bold uppercase text-[#f5f5dc]">
            Gallery
        </h2>
        <!-- <span class="font-bold text-gray-800/80"
            >Great rooms are at your service.
        </span> -->
        <div class="text-center">
            <span
            class="inline-block w-1 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            <span
            class="inline-block w-3 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            <span class="inline-block w-40 h-1 rounded-full bg-[#f5f5dc]"></span>
            <span
            class="inline-block w-3 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            <span
            class="inline-block w-1 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
        </div>
        </div>
        <div class="container mx-auto py-0 md:py-4">
        <!-- <div
            class="flex flex-col md:flex-row items-center justify-center gap-4 my-7"
            data-aos="fade-left"
            data-aos-offset="300"
            data-aos-easing="ease-in-sine"
        > -->
        <div
            class="flex flex-col md:flex-row items-center justify-center gap-4 my-7"
        >
            <div class="flex items-center justify-center space-x-4 h-1/2">
            <button
                class="filter-btn block bg-gray-300 text-gray-800 py-2 text-center rounded-md active"
                data-filter="all"
            >
                All
            </button>
                '. $gal_list .'
            </div>
        </div>
        <div
            class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"
            data-aos="fade-up"
            data-aos-offset="300"
            data-aos-easing="ease-in-sine"
        >
            
            '. $gal_detail .'
        </div>
        </div>
    </main>';

}
$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-list-bred'] = $gallerylistbread;
