<?php
$siteRegulars = Config::find_by_id(1);

$telno = explode(",", $siteRegulars->contact_info);

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
$footer = '                     
                <section class="relative bg-gray-800 text-[#f5f5dc] p-4">
                    <div class="container mx-auto py-4">
                    <div class="flex flex-wrap -mx-4">
                        <div class="w-full px-4 lg:w-3/12">
                        <div class="hidden md:block w-full mb-10">
                            <a href="javascript:void(0)" class="mb-6 inline-block">
                            <h2 class="text-lg font-bold">'. $siteRegulars->sitename .'</h2>
                            <div class="w-1/2 h-1 rounded-full bg-[#f5f5dc]/40"></div>
                            </a>
                            <p class="text-base mt-4">
                            '. $siteRegulars->breif .'
                            <a href="./about.html" class="underline hover:no-underline"
                                >read more <i class="ml-1 fa-solid fa-arrow-right"></i
                            ></a>
                            </p>
                            <a
                            href="'. $siteRegulars->contact_info2 .'"
                            target="_blank"
                            class="mt-4 flex items-center text-sm font-medium text-[#f5f5dc] underline"
                            >
                            <i class="mr-2 fa-solid fa-map-marker-alt"></i>
                            <span>View on Map</span>
                            </a>
                        </div>
                        </div>
                        <div class="w-full px-4 sm:w-1/2 lg:w-3/12">
                        <div class="w-full mb-10">
                            <h4 class="text-lg font-semibold text-dark mb-9">
                            Contact Address
                            <div class="w-1/4 h-1 rounded-full bg-[#f5f5dc]/40"></div>
                            </h4>
                            <ul class="space-y-3">
                            <li>
                                <a
                                href="'. $siteRegulars->contact_info2 .'"
                                class="inline-block text-base leading-loose text-body-color hover:underline"
                                target="_blank"
                                >
                                <i class="mr-2 fa-solid fa-map-marker-alt"></i>
                                '. $siteRegulars->fiscal_address .'
                                </a>
                            </li>
                            <li>
                                <a
                                href="tel:+977'. $siteRegulars->contact_info .'"
                                class="inline-block text-base leading-loose text-body-color hover:underline"
                                target="_blank"
                                >
                                <i class="mr-2 fa-solid fa-phone-volume"></i>
                                +977 '. $siteRegulars->contact_info .'
                                </a>
                            </li>
                            <li>
                                <a
                                href="mailto:'. $siteRegulars->email_address .'"
                                class="inline-block text-base leading-loose text-body-color hover:underline"
                                target="_blank"
                                >
                                <i class="mr-2 fa-solid fa-envelope"></i>
                                '. $siteRegulars->email_address .'
                                </a>
                            </li>
                            </ul>
                            <div class="flex items-start md:gap-2 flex-row mt-6">
                            '. $jVars['module:socilaLinkbtm']  .'
                            </div>
                        </div>
                        </div>
                        <div class="w-full px-4 sm:w-1/2 lg:w-3/12">
                        <div class="hidden md:block w-full mb-10">
                            <h4 class="text-lg font-semibold text-dark mb-9">
                            Disclaimer & Policies
                            <div class="w-1/4 h-1 rounded-full bg-[#f5f5dc]/40"></div>
                            </h4>
                            <ul class="space-y-3">
                            '. $jVars['module:footer-menu']  .'
                            
                            </ul>
                        </div>
                        </div>
                
                        <div class="px-4 w-full lg:w-3/12">
                        <h4 class="text-lg font-semibold text-dark mb-9">
                            Book us Online
                            <div class="w-1/4 h-1 rounded-full bg-[#f5f5dc]/40"></div>
                        </h4>
                
                        <div class="grid grid-cols-2 md:grid-cols-6 lg:grid-cols-2 gap-5 place-items-center">
                            <a
                            href="https://www.tripadvisor.com/Hotel_Review-g293890-d7195928-Reviews-Naikap_Village_Resort-Kathmandu_Kathmandu_Valley_Bagmati_Zone_Central_Region.html"
                            class="bg-[#f5f5dc] p-2 rounded-lg"
                            >
                            <img
                                src="'.BASE_URL.'template/web/svg/tripadvisor.svg"
                                alt="Tripadvisor"
                                class="w-32 h-8 object-contain"
                            />
                            <!-- <p>Tripadvisor</p> -->
                            </a>
                            <a
                            href="https://ar.trivago.com/en-145/oar/hotel-naikap-village-resort-kathmandu?search=100-3808374"
                            class="bg-[#f5f5dc] p-2 rounded-lg"
                            >
                            <img
                                src="'.BASE_URL.'template/web/svg/trivago.svg"
                                alt="trivago"
                                class="w-32 h-8 object-contain"
                            />
                            <!-- <p>Trivago</p> -->
                            </a>
                            <a
                            href="https://www.agoda.com/naikap-village-resort/hotel/kathmandu-np.html?cid=1844104&ds=zTLIWoMcKozoB%2FHT"
                            class="bg-[#f5f5dc] p-2 rounded-lg"
                            >
                            <img
                                src="'.BASE_URL.'template/web/svg/agoda.svg"
                                alt="Agoda"
                                class="w-32 h-9 object-cover"
                            />
                            </a>
                            <a
                            href="https://www.makemytrip.com/hotels-international/nepal/kathmandu-hotels/naikap_village_resort-details.html"
                            class="bg-[#f5f5dc] p-2 rounded-lg"
                            >
                            <img
                                src="'.BASE_URL.'template/web/svg/makemytrip.svg"
                                alt="Make my trip"
                                class="w-32 h-8 object-contain"
                            />
                            <!-- <p>Makemytrip</p> -->
                            </a>
                            <a
                            href="https://www.expedia.com/Kathmandu-Hotels-Naikap-Village-Resort.h11889782.Hotel-Information"
                            class="bg-[#f5f5dc] p-2 rounded-lg"
                            >
                            <img
                                src="'.BASE_URL.'template/web/svg/expedia.svg"
                                alt="Expedia"
                                class="w-32 h-8 object-cover"
                            />
                            <!-- <p>Expedia</p> -->
                            </a>
                            <a
                            href="https://www.goibibo.com/hotels-international/naikap-village-resort-hotel-in-kathmandu-8521458342588536344/"
                            class="bg-[#f5f5dc] p-2 rounded-lg"
                            >
                            <img
                                src="'.BASE_URL.'template/web/svg/goibibo.svg"
                                alt="Goibibo"
                                class="w-32 h-8 object-cover"
                            />
                            <!-- <p>Goibibo</p> -->
                            </a>
                        </div>
                        </div>
                    </div>
                
                    <div class="border-[#f5f5dc] border-b-2 border-dotted my-5"></div>
                
                    <div class="flex items-center justify-between flex-col xl:flex-row gap-4">
                        <div>
                        <p class="text-center">
                        '.$jVars['site:copyright'].'
                            
                        </p>
                        </div>
                        <div class="flex items-center justify-between gap-4 mt-5 md:mt-0">
                        <h4 class="text-xs md:text-base uppercase font-bold">We accept</h4>
                        <ul class="flex items-center justify-between gap-4">
                            <li>
                            <a href="#" target="_blank">
                                <img
                                src="'.BASE_URL.'template/web/img/visa/visa.png"
                                class="w-12 h-auto object-contain"
                                alt="visa"
                                />
                            </a>
                            </li>
                            <li>
                            <a href="#" target="_blank">
                                <img
                                src="'.BASE_URL.'template/web/img/visa/union.png"
                                class="w-12 h-auto object-contain"
                                alt="union"
                                />
                            </a>
                            </li>
                            <li>
                            <a href="#" target="_blank">
                                <img
                                src="'.BASE_URL.'template/web/img/visa/mastercard.png"
                                class="w-12 h-auto object-contain"
                                alt="mastercard"
                                />
                            </a>
                            </li>
                            <li>
                            <a href="#" target="_blank">
                                <img
                                src="'.BASE_URL.'template/web/img/visa/amex.png"
                                class="w-12 h-auto object-contain"
                                alt="amex"
                                />
                            </a>
                            </li>
                        </ul>
                        </div>
                    </div>
                    </div>
                </section>';

$jVars['module:footer'] = $footer;

$footer_booking = ob_start();
?>
    <div class="book-online"> Developed By: <a href="https://longtail.info/" target="_blank">Longtail e-media</a>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Book From anywhere</h3>
                </div>
                <div class="col-md-offset-1 col-md-2 col-xs-6">
                    <a href="#" target="_blank">
                        <img src="<?= BASE_URL ?>template/web/images/booking.png" alt="Expedia" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank">
                        <img src="<?= BASE_URL ?>template/web/images/expedia.png" alt="Expedia" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank">
                        <img src="<?= BASE_URL ?>template/web/images/trip.png" alt="tripadviser" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank">
                        <img src="<?= BASE_URL ?>template/web/images/agoda.png" alt="Agoda" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank">
                        <img src="<?= BASE_URL ?>template/web/images/tmake.png" alt="Make my trip" class="img-responsive">
                    </a>
                </div>
            </div>
        </div>
    </div>
<?php
$footer_booking = ob_get_clean();

$jVars['module:footer-booking'] = $footer_booking;
