<?php
/*
* Contact form
*/
$rescont = $innerbred = '';
$siteRegulars = Config::find_by_id(1);

if (defined('CONTACT_PAGE')) {
    $innerbred .= '   
 
    <section
        class="bg-[url(\''.IMAGE_PATH.'preference/contact/'. $siteRegulars->contact_image.'\')] w-full h-[60vh] bg-fixed bg-bottom lg:bg-top xl:bg-bottom bg-no-repeat bg-contain xl:bg-cover"
    >
        <img
        src="'.IMAGE_PATH.'preference/contact/'. $siteRegulars->contact_image.'"
        alt="A beautiful night view"
        class="lg:hidden w-full h-[60vh] object-cover"
        />
    </section>
        ';


    $tellinked = '';
    $count = 1;

    foreach ($telno as $tel) {
        if($count>1){
            $tellinked .= ' / ';
        }

        $tellinked .= '<a href="tel:+977 ' . $tel . '">' . $tel . '</a>';
        $count++;
    }
    // pr($siteRegulars);
    $rescont .= '
    <section class="contact section-padding">
    <div class="container">
        <div class="row mb-90">
            <div class="col-md-6 mb-60">
                <h3>Hotel Ambassador by ACE Hotels</h3>
                <div class="reservations mb-30">
                    <div class="icon"><span class="flaticon-location-pin"></span></div>
                    <div class="text">
                        <p>'. $siteRegulars->address .'</p>
                    </div>
                </div>
                <div class="reservations mb-30">
                    <div class="icon"><span class="flaticon-call"></span></div>
                    <div class="text">
                        <p>Contact</p> +977 1 '.$tellinked.'
                    </div>
                </div>
                <div class="reservations mb-30">
                    <div class="icon"><span class="flaticon-envelope"></span></div>
                    <div class="text">
                        <p>Email Info</p> <a href="mailto:'. $siteRegulars->email_address.'">'. $siteRegulars->email_address .'</a>
                    </div>
                </div>
            </div>

            <div class="col-md-5 mb-30 offset-md-1">
                <h3>Get in touch</h3>
                <form method="post" class="contact__form" action="#" id="frm_contact">
                    <!-- form message -->
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-success contact__msg" style="display: none" role="alert"> Your message was sent successfully. </div>
                        </div>
                    </div>
                    <!-- form elements -->
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input name="name" type="text" placeholder="Your Name *" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <input name="email" type="email" placeholder="Your Email *" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <input name="phone" type="text" placeholder="Your Number *" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <input name="subject" type="text" placeholder="Subject *" required>
                        </div>
                        <div class="col-md-12 form-group">
                            <textarea name="message" id="message" cols="30" rows="4" placeholder="Message *" required></textarea>
                        </div>
                        <div class="col-md-12">
                            <div id="result_msg" class="alert alert-success" style="display:none"></div>
                            <button type="submit" class="butn-dark2" id="submit"><span>Send Message</span></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Map Section -->
        <div class="row">
            <div class="col-md-12 map animate-box" data-animate-effect="fadeInUp">
                <iframe src="'. $siteRegulars->location_map.'" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</section>
    ';
}

$jVars['module:contact-us'] = $rescont;
$jVars['module:contact-bread'] = $innerbred;