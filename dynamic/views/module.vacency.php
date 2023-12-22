<?php

$vacencylist = $vacency_bread = '';

if (defined('CAREER_PAGE')) {

    $vacency_bread .= '
        <div class="impx-page-heading uk-position-relative about" style="background-image: url(' . BASE_URL . 'template/web/images/page-heading/default.jpg);">
            <div class="impx-overlay dark"></div>
            <div class="uk-container">
                <div class="uk-width-1-1">
                    <div class="uk-flex uk-flex-left">
                        <div class="uk-light uk-position-relative uk-text-left page-title">
                            <h1 class="uk-margin-remove">Career</h1><!-- page title -->
                            <p class="impx-text-large uk-margin-remove">Opportunity</p><!-- page subtitle -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    ';

    $vacencies = Vacency::get_allvacancy();

    // pr($vacencies);
    if (!empty($vacencies)) {
        foreach ($vacencies as $vacency) {
            $vacencylist .= '
                <li class="accordion block">
                    <div class="acc-btn">
                        <div class="position">
                            <div class="position-title">
                            ' . $vacency->title . ' <span>' . $vacency->post . '</span>
                            </div>
                            <div class="position-location">
                                <span>Location</span> ' . $vacency->location . '
                            </div>
                            <div class="position-time">
                                Employment Type <span>Full-time</span>
                            </div>
                        </div>
                    </div>
                    <div class="acc-content" style="display: none;">
                        <div class="content">
                            <div class="text row">
                                <div class="col-md-10">
                                    <ul>
                                        <li>Qualification: ' . strip_tags($vacency->content) . '</li>
                                        <li>No. of Peoples: ' . $vacency->pax . '</li>
                                        <li>Last Submission: ' .  $vacency->date2 . '</li>
                                    </ul>
                                </div>
                                <div class="col-md-2">
                                    <a href="'. BASE_URL . 'career-form/' . $vacency->slug .'"><button type="submit" class="butn-dark2"><span>Apply Now</span></button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            ';
        }
    } else {
        $vacencylist .= '<h4 style="text-align: center;font-size: 50px;">SEND YOUR RESUME!!!!</h4></br></br>';
    }
}

$jVars['module:vacencylist'] = $vacencylist;
$jVars['module:vacency:list-bread'] = $vacency_bread;


/**
 *      Career Form
 */

$careerform = $innerbred = '';
if (defined('CAREER_PAGE') and isset($_REQUEST['slug'])) {
    

    $innerbred .= '   
    <div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="3" data-background="'. BASE_URL.'template/web/img/slider/2.jpg">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-left caption mt-90">
                    <h5>Get in touch</h5>
                    <h1>Apply Now</h1>
                </div>
            </div>
        </div>
    </div>
        ';
    $slug = $_REQUEST['slug'];
    $v = Vacency::find_by_slug($slug);
    
    $vacen = (!empty($v->id))? $v->id :"none";
    $careerform = '
        
        <form class="cons-contact-form form-transparent mb-5" id="careerform" enctype="multipart/form-data">
            <input type="hidden" name="position" value="' . $v->id . '">
        
            <div class="row career-label">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Your Name</label>
                        <input name="name" type="text" required="" class="form-control" placeholder="Name">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Your E-mail</label>
                        <input name="email" type="text" class="form-control" required="" placeholder="Email">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Your Number</label>
                        <input name="phone" type="text" class="form-control" required="" placeholder="Phone">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Your Address</label>
                        <input name="address" type="text" class="form-control" required="" placeholder="Address">
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label>Upload Your File</label>
                        <div class="file">
                            <i class="fa fa-file"></i>
                            <input type="file" id="FileAttachment" name="myfile">
                            <input type="hidden" name="fileArrayname"/>
                            <span class="car123">(Maximum file size is 500KB)</span>
                        </div>
                        <div id="responseFile"></div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label style="margin-top: 20px;">Your MESSAGE</label>
                        <textarea name="message" class="form-control" rows="4" placeholder="Message"></textarea>
                    </div>
                </div>
            </div>

            <button type="submit"  class="btn btn-light" id="submit">
                <span class="font-weight-700 inline-block text-uppercase p-lr15 suubmit">Apply Now</span>
            </button>

            <div class="alert alert-success" id="msg" style="display:none;"></div>
        </form>
    ';
}
$jVars['module:careerform'] = $careerform;
$jVars['module:vacency-bread'] = $innerbred;