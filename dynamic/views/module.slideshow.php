<?php
/* First Slideshow */
$reslide=$reslide_below=$slideshow='';

$Records = Slideshow::getSlideshow_by(1);
// var_dump($Records); die();
if($Records) {
        foreach($Records as $RecRow) {
            $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
            if(file_exists($file_path) and !empty($RecRow->image)) {
                $reslide.='

                    <div
                        class="relative w-full min-h-[400px] md:min-h-[500px] lg:h-screen bg-[url(\''.IMAGE_PATH.'slideshow/'.$RecRow->image.'\')] bg-no-repeat bg-cover bg-center"
                    ></div>
                            ';
                $reslide_below .='
                    <div class="item">
                    <img
                        src="'.IMAGE_PATH.'slideshow/'.$RecRow->image.'"
                        class="w-64 h-72 object-cover rounded-xl"
                    />
                    </div>';
            }
        }

        $slideshow = '
        <section data-aos="zoom-out-up" data-aos-delay="200" data-autoplay="">
            <div id="main-slider" class="owl-carousel owl-theme relative">
                '. $reslide .'
            </div>
            <div
            class="hidden lg:block absolute top-[25%] -right-8 bg-slate-700 py-5 pl-5 rounded-xl z-[1] w-[450px]"
            >
                <div id="slider-thumb" class="owl-carousel owl-theme">
                    '. $reslide_below .'
                </div>
                <!-- Slider Nav -->
                <div class="flex flex-row gap-3 pt-4">
                    <button
                    type="button"
                    role="presentation"
                    class="customPrevBtn py-1 px-2 rounded-sm bg-primary text-[#f5f5dc] hover:bg-acent"
                    >
                    <i class="fa-solid fa-chevron-left"></i>
                    </button>
                    <button
                    type="button"
                    role="presentation"
                    class="customNextBtn py-1 px-2 rounded-sm bg-primary text-[#f5f5dc] hover:bg-acent"
                    >
                    <i class="fa-solid fa-chevron-right"></i>
                    </button>
                </div>
                <!-- End Slider Nav -->
            </div>
        </section>';

}

$jVars['module:slideshow']= $slideshow;
?>