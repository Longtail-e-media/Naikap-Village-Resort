<?php
$resinndetail = $imageList = $innerbred = $t = '';
$siteRegulars = Config::find_by_id(1);

$homearticle = Article::find_by_id(22);
if (!empty($homearticle)) {
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $t .= ' <div class="col-xs-12">
                     <a href="' . BASE_URL . 'page/' . $homearticle->slug . '">
                    <div class="mosaic_container">
                        <img src="' . $imglink . '" alt="' . $homearticle->title . '" class="img-responsive add_bottom_30"><span class="caption_2"> ' . $homearticle->title . '</span>
                    </div>
                    </a>
                </div>';


}

$jVars['module:aboutarticle'] = $t;

/**
 *      Home page
 */
$resinnh = '';

if (defined('HOME_PAGE')) {
    $recInn = Article::homepageArticle();
    if (!empty($recInn)) {
        foreach ($recInn as $innRow) {
        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
        $content = $rescontent[0];
        $resinnh .= $content;
            
        }
    }

}

$jVars['module:home-article'] = $resinnh;

/**
 *      Inner page detail
 */

$aboutdetail = $imageList = $aboutbred = '';

if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);

    if (!empty($recRow)) {
        $imglink = IMAGE_PATH . 'preference/default/'. $siteRegulars->default_image;
        if ($recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
            }
        }

        $innerbred .= '
            <section
                class="bg-[url(\'' . $imglink . '\')] w-full h-[60vh] bg-fixed bg-bottom lg:bg-top xl:bg-bottom bg-no-repeat bg-contain xl:bg-cover"
            >
                <img
                src="' . $imglink . '"
                alt="A beautiful night view"
                class="lg:hidden w-full h-[60vh] object-cover"
                />
            </section>
        ';

        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));
        $content = !empty($rescontent[1]) ? $rescontent[1] : $rescontent[0];


        $aboutdetail .= '

        <div class="flex flex-col items-center justify-center mt-5 md:mt-10">
            <h2 class="text-4xl font-bold uppercase pt-5 text-[#f5f5dc]">'. $recRow->title .'</h2>
            <div class="text-center b-5 md:mb-10">
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
    
        <div
            class="container mx-auto flex items-center justify-center p-4 md:p-0 mb-10"
        >
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                '. $content .'
            </div>
        </div>
            
        ';


    } else {
        redirect_to(BASE_URL);
    }
}

$jVars['module:inner-about-detail'] = $aboutdetail;
$jVars['module:inner-about-bread'] = $innerbred;


$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
	<div class="home-content">
		' . $content[0] . ' ' . $readmore . '
	</div>';

}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';

// pr($resinnh1);
    $recInn1 = Article::find_by_id(2);
    if (!empty($recInn1)) {
            $resinnh1 .= '
            <div class="title-area wow fadeIn">

                <h2>'. $recInn1->title .'</h2>
                <div class="small-border"><span></span></div>
                <p class="sub-heading mt20">'. $recInn1->sub_title .'</p>
            </div>

            <p align=" justify" class="mt30">
                '. strip_tags($recInn1->content) .'
            </p>';

        
    }

}

$jVars['module:home_article'] = $resinnh1;


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id(3);

    if (!empty($recInn1)) {

            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_facilities'] = $resinnh1;

?>