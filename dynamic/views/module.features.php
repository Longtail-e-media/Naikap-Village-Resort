<?php 
/*
* Facilities list
*/
$rescont= $facbred= '';
  
$subpkgRec = Features::find_all_byparnt(56);
// var_dump($subpkgRec); die();
    if(!empty($subpkgRec)) {
        $rescont.='<div class="box_style_3" id="general_facilities">
                <h3>General Facilities</h3>
                <ul>';
                      
                        foreach($subpkgRec as $k=>$v){
                                 $rescont.='
                                  <li><i class="'.$v->icon.'"></i>'.$v->title.'</li>
                                ';    
                }
                                       
                            
                    $rescont.='</ul>
            </div>';      
    }
   
$jVars['module:generalfacilities-list'] = $rescont;

?>