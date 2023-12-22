<?php

$faq_details = '';

if (defined('FAQ_PAGE')) {

    $faqs = Faq::find_all();

    if (!empty($faqs)) {
        $faq_details .= '';

        foreach ($faqs as $i => $faq) {
            $collapsed = ($i == 0) ? '' : 'collapsed';
            $show = ($i == 0) ? 'show' : '';
            $faq_details .= '

            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button '. $collapsed .'" type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $faq->id . '" aria-expanded="true" aria-controls="collapseOne">
                        '. $faq->title .'
                    </button>
                </h2>
                <div id="collapse' . $faq->id . '" class="accordion-collapse collapse '.$show.'" data-bs-parent="#accordionExample">
                    <div class="accordion-body acc-content">
                        <div class="text">'. $faq->content .'</div>
                    </div>
                </div>
            </div>
            ';
        }

        $faq_details .= '';
    } else {
        $faq_details .= '<h3 class="text-center p-4">No FAQ Found</h3>';
    }
}

$jVars['module:faq:details'] = $faq_details;


$faq_details = '';

if (defined('HOME_PAGE')) {

    $faqs = Faq::find_few(3);

    if (!empty($faqs)) {
        $faq_details .= '';
        
        foreach ($faqs as $i => $faq) {
            $collapsed = ($i == 0) ? '' : 'collapsed';
            $show = ($i == 0) ? 'show' : '';
            $faq_details .= '

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button '. $collapsed .'" type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $faq->id . '" aria-expanded="true" aria-controls="collapseOne">
                        '. $faq->title .'
                        </button>
                    </h2>
                    <div id="collapse' . $faq->id . '" class="accordion-collapse collapse '.$show.'" data-bs-parent="#accordionExample">
                        <div class="accordion-body acc-content">
                            <div class="text">'. $faq->content .'</div>
                        </div>
                    </div>
                </div>
                ';
        }

        $faq_details .= '';
    } else {
        $faq_details .= '<h3 class="text-center p-4">No FAQ Found</h3>';
    }
}

$jVars['module:faq:details-homepage'] = $faq_details;

$jVars['module:faqlink'] = BASE_URL . 'faq';