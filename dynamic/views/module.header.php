<?php
$siteRegulars = Config::find_by_id(1);

$telno = explode(",", $siteRegulars->contact_info);
// $jVars['module:res-menu'] 
// pr($siteRegulars);
$jVars['module:logo-light']=IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload;
$jVars['module:logo-dark']=IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload_dark;



$header = '
            <div class="header-top">
                <div class="container">
                    <ul>
                        <li class="nav-item">
                            <a class="nav-link" href="'. $siteRegulars->contact_info2 .'" target="_blank"><i class="ti-location-pin"></i> '. $siteRegulars->fiscal_address .'</a>
                        </li>
        
                        <li>|</li>
        
                        <li class="nav-item">
                            <a class="nav-link" href="tel:'. end($telno) .'"><i class="ti-mobile"></i> '. end($telno) .'</a>
                        </li>
                    </ul>
                </div>
            </div>
        
            <!-- Navbar -->
            <nav class="navbar navbar-expand-md">
                <div class="container">
        
                    <!-- Logo -->
                    <div class="logo-wrapper navbar-brand valign">
                        <a href="'.BASE_URL.'">
                            <div class="logo">
                                <img src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'" class="logo-img" alt="LOgo">
                            </div>
                        </a>
                    </div>
        
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"><i class="ti-menu"></i></span> </button>
        
                    <!-- Navbar links -->
                    <div class="collapse navbar-collapse" id="navbar">
                        <ul class="navbar-nav ms-auto">
                            '. $jVars['module:res-menu'] .'
                            
                        </ul>
                    </div>
                </div>
            </nav>
            
            ';

$header = '    
<nav
  class="fixed top-0 w-full px-4 py-4 flex justify-between items-center z-50 transition-all duration-300 ease-in-out bg-gradient-to-t from-[rgba(0,0,0,0)] via-[rgba(0,0,0,0.5)] to-[rgba(0,0,0,0.75)]"
>
  <a class="" href="'.BASE_URL.'">
    <img
      src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'"
      alt="Naikap Village Resort"
      class="logo absolute -top-1 transition-all duration-300 ease-linear w-24 h-20 object-contain bg-[#f5f5dc]"
    />
  </a>
  <div class="lg:hidden">
    <button
      class="navbar-burger flex items-center rounded-full bg-gray-800/50 text-[#f5f5dc] p-3"
    >
      <i class="fa-solid fa-bars"></i>
    </button>
  </div>
  <ul
    class="hidden absolute top-1/2 left-1/2 transform -translate-y-1/2 -translate-x-1/2 lg:flex lg:mx-auto lg:items-center lg:w-auto lg:space-x-6"
  >
  '. $jVars['module:res-menu'] .'
  

  </ul>
  <a
    href="result.php?hotel_code=EZtpbg"
    target="_blank"
    class="hidden lg:inline-block py-2 px-6 bg-[#ef4c23] hover:bg-[#6b7e42] text-sm text-[#f5f5dc] font-bold rounded-lg transition duration-200"
    href="#"
    ><i class="fa-solid fa-calendar-check text-md mr-2"></i>Book now</a
  >
</nav>


<div class="navbar-menu relative z-50 hidden bg-[#ef4c23]">
  <div class="navbar-backdrop fixed inset-0 bg-gray-800 opacity-25"></div>
  <nav
    class="fixed top-0 left-0 bottom-0 flex flex-col w-5/6 max-w-xs py-6 px-6 bg-gray-800 border-r overflow-y-auto"
  >
    <div class="flex items-center justify-between mb-8">
      <a class="bg-[#f5f5dc] rounded-lg" href="./index.html">
        <img
          src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'"
          alt="Naikap Village Resort"
          class="w-24 h-20 object-contain"
        />
      </a>
      <button class="navbar-close cursor-pointer p-3">
        <i class="fa-solid fa-xmark text-2xl text-[#f5f5dc]"></i>
      </button>
    </div>
    <div>
      <ul>
        '. $jVars['module:res-menu-responsive'] .'

        
      </ul>
    </div>
    <div class="mt-auto">
      <div class="pt-6">
        <a
          class="block px-4 py-3 mb-2 leading-loose text-center bg-[#ef4c23] hover:bg-[#6b7e42] text-sm text-[#f5f5dc] font-bold rounded-lg transition duration-200 animate-pulse"
          href="result.php?hotel_code=EZtpbg"
          >BOOK NOW</a
        >
      </div>
    </div>
  </nav>
</div>
';
$jVars['module:header'] = $header;