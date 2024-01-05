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

    $rescont ='
    <div class="container p-4 mx-auto">
        <section class="text-center">
        <div class="py-12 md:px-12">
            <div class="container mx-auto xl:px-32">
            <div class="grid items-center lg:grid-cols-2">
                <div
                class="relative z-[1] rounded-lg px-6 py-12 shadow-[0_2px_15px_-3px_rgba(0,0,0,0.07),0_10px_20px_-2px_rgba(0,0,0,0.04)] backdrop-blur-[30px] bg-[hsla(0,0%,5%,0.7)] shadow-black/20 md:px-12 lg:-mr-14"
                >
                <h2 class="text-3xl font-bold text-[#f5f5dc]">Write to us</h2>
                <div class="text-center mb-10">
                    <span
                    class="inline-block w-1 h-1 rounded-full bg-[#f5f5dc] ml-1"
                    ></span>
                    <span
                    class="inline-block w-3 h-1 rounded-full bg-[#f5f5dc] ml-1"
                    ></span>
                    <span
                    class="inline-block w-40 h-1 rounded-full bg-[#f5f5dc]"
                    ></span>
                    <span
                    class="inline-block w-3 h-1 rounded-full bg-[#f5f5dc] ml-1"
                    ></span>
                    <span
                    class="inline-block w-1 h-1 rounded-full bg-[#f5f5dc] ml-1"
                    ></span>
                </div>
                <form
                    class="flex items-center justify-center flex-col gap-10"
                    id="frm_contact"
                    method="post"
                    action="enquery_mail.php"
                >
                    <div class="mt-5 relative w-full" data-te-input-wrapper-init>
                    <input
                        type="text"
                        name="name"
                        class="rounded w-full bg-[#f5f5dc]/20 py-2 px-3 leading-[1.6] text-lg outline-none transition-all duration-200 ease-linear text-[#f5f5dc] border-[#f5f5dc] border-b-2 border-dotted"
                        id=""
                        required
                    />
                    <label
                        class="pointer-events-none absolute -top-6 left-0 mb-0 origin-[0_0] truncate text-[#f5f5dc]"
                        for=""
                        >Full Name<sup>*</sup>
                    </label>
                    </div>
                    <div class="relative w-full" data-te-input-wrapper-init>
                    <input
                        type="text"
                        name="contact"
                        class="rounded w-full bg-[#f5f5dc]/20 py-2 px-3 leading-[1.6] text-lg outline-none transition-all duration-200 ease-linear text-[#f5f5dc] border-[#f5f5dc] border-b-2 border-dotted"
                        id=""
                        required
                    />
                    <label
                        class="pointer-events-none absolute -top-6 left-0 mb-0 origin-[0_0] truncate text-[#f5f5dc]"
                        >Contact Number<sup>*</sup>
                    </label>
                    </div>
                    <div class="relative w-full" data-te-input-wrapper-init>
                    <input
                        type="email"
                        name="email"
                        class="rounded w-full bg-[#f5f5dc]/20 py-2 px-3 leading-[1.6] text-lg outline-none transition-all duration-200 ease-linear text-[#f5f5dc] border-[#f5f5dc] border-b-2 border-dotted"
                        id=""
                        required
                    />
                    <label
                        class="pointer-events-none absolute -top-6 left-0 mb-0 origin-[0_0] truncate text-[#f5f5dc]"
                        >Email address<sup>*</sup>
                    </label>
                    </div>
                    <div class="relative w-full" data-te-input-wrapper-init>
                    <textarea
                        name="message"
                        class="rounded w-full bg-[#f5f5dc]/20 py-2 px-3 leading-[1.6] text-lg outline-none transition-all duration-200 ease-linear text-[#f5f5dc] border-[#f5f5dc] border-b-2 border-dotted"
                        id=""
                        rows="3"
                    ></textarea>
                    <label
                        for=""
                        class="pointer-events-none absolute -top-6 left-0 mb-0 origin-[0_0] truncate text-[#f5f5dc]"
                        >Message</label
                    >
                    </div>
                 
                    <div
                    id="g-recaptcha-response"
                    class="g-recaptcha col-md-8 form-group"
                    data-sitekey="6LdGEDUpAAAAAFF4vueWfSGbWITXg3NYLrYDqDjS"
                    ></div>

                    <button
                    type="submit"
                    data-te-ripple-init
                    data-te-ripple-color="light"
                    class="inline-block w-full rounded bg-primary px-6 py-3 text-lg font-medium uppercase leading-normal bg-gray-800 hover:bg-[#ef4c23] text-white shadow-[0_4px_9px_-4px_#3b71ca] transition duration-200 ease-in-out hover:bg-primary-600 hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:bg-primary-600 focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:outline-none focus:ring-0 active:bg-primary-700 active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(59,113,202,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)]"
                    >
                    Send
                    </button>
                </form>
                </div>

                <div class="md:mb-12 lg:mb-0">
                <div
                    class="relative h-[800px] rounded-lg shadow-lg dark:shadow-black/20"
                >
                    <iframe
                    src="'. $siteRegulars->location_map.'"
                    class="absolute left-0 top-0 h-full w-full rounded-lg"
                    style="border: 0"
                    allowfullscreen=""
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"
                    ></iframe>
                </div>
                </div>
            </div>
            </div>
        </div>
        </section>
        <div class="flex flex-col items-center justify-center gap-5 mt-10">
        <div
            class=""
            data-aos="fade-right"
            data-aos-offset="300"
            data-aos-easing="ease-in-sine"
        >
            <h5
            class="text-center text-xl md:text-4xl font-bold uppercase text-[#f5f5dc]"
            >
            Find Us with QR Code
            </h5>
            <div class="text-center">
            <span
                class="inline-block w-1 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            <span
                class="inline-block w-3 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            <span
                class="inline-block w-40 h-1 rounded-full bg-[#f5f5dc]"
            ></span>
            <span
                class="inline-block w-3 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            <span
                class="inline-block w-1 h-1 rounded-full bg-[#f5f5dc] ml-1"
            ></span>
            </div>
        </div>
        <div
            data-aos="fade-left"
            data-aos-offset="300"
            data-aos-easing="ease-in-sine"
        >
            <img src="'. BASE_URL.'template/web/svg/mapQRcode.svg" alt="QR Code for Google Maps" />
        </div>
        </div>
    </div>
    ';

}

$jVars['module:contact-us'] = $rescont;
$jVars['module:contact-bread'] = $innerbred;