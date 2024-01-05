<?php
$homevideo='';

$videos= Video::getVideos();
// pr($videos);
if(defined('HOME_PAGE')){
foreach($videos as $video){

    $homevideo .='
    <section class="w-full h-full container mx-auto mb-10">
      <iframe
        src="'.$video->url.'"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen
        class="w-[100%] h-60 md:h-96 lg:h-screen"
      >
      </iframe>
    </section>
    
    ';
}
}
$jVars['module:home-video'] = $homevideo;

?>