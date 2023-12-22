<?php
$result = '';

$menuRec = Menu::getMenuByParent(0, 1);

$current_url = $_SERVER["REQUEST_URI"];
$data = explode('/', $current_url);

if ($menuRec):
    $result .= '';
    foreach ($menuRec as $menuRow):
        $linkActive = $PlinkActive = '';
        $tot = strlen(SITE_FOLDER) + 2;
        $data = substr($_SERVER['REQUEST_URI'], $tot);

        if (!empty($data)):
            $linkActive = ($menuRow->linksrc == $data) ? " active" : "";
            $parentInfo = Menu::find_by_linksrc($data);
            if ($parentInfo):
                $PlinkActive = ($menuRow->id == $parentInfo->parentOf) ? " active " : "";
            endif;
        endif;

        $menusubRec = Menu::getMenuByParent($menuRow->id, 1);
        $subclass = ($menusubRec) ? 'relative group ' : '';
        $classLink = !empty($menusubRec) ? ' text-md tracking-wide text-[#f5f5dc] hover:bg-[#ef4c23] py-2 px-3 rounded-lg transition-all duration-200 ease-in-out  ' : ' text-md tracking-wide text-[#f5f5dc] hover:bg-[#ef4c23] py-2 px-3 rounded-lg transition-all duration-200 ease-in-out ';
        $chkchild = !empty($menusubRec) ? '1' : '';
        $drop1 = !empty($menusubRec) ? ' <i class="ti-angle-down"></i>' : '';
        $result .= '<li class=" '. $subclass .'">';
        $result .= getMenuList($menuRow->name, $menuRow->linksrc, $menuRow->linktype, $linkActive . $PlinkActive . $classLink, $chkchild, $drop1);
        /* Second Level Menu */
        if ($menusubRec):
            $result .= '      
            <div
                class="hidden group-hover:block w-[200px] absolute top-8 -left-10 bg-[#f5f5dc] rounded-lg py-2 transition-all duration-200 ease-in-out delay-200"
            >
                <ul class="flex items-start justify-center flex-col gap-2">';
            foreach ($menusubRec as $menusubRow):
                $menusub2Rec = Menu::getMenuByParent($menusubRow->id, 1);
                $chkparent2 = (!empty($menusub2Rec)) ? 1 : 0;
                $drop2 = !empty($menusub2Rec) ? 'class="dropdown"' : '';
                $classLink = !empty($menusubRec) ? ' block w-full py-2 px-3 rounded-lg text-gray-800 hover:text-[#f5f5dc] hover:bg-[#ef4c23] transition-all duration-200 ease-in-out  ' : ' block w-full py-2 px-3 rounded-lg text-gray-800 hover:text-[#f5f5dc] hover:bg-[#ef4c23] transition-all duration-200 ease-in-out ';

                $result .= '<li class="w-full px-2">';
                $result .= getMenuList($menusubRow->name, $menusubRow->linksrc, $menusubRow->linktype, $classLink, $chkparent2);
                /* Third Level Menu */
                if ($menusub2Rec):
                    $result .= '<ul class="dropdown-menu">';
                    foreach ($menusub2Rec as $menusub2Row):
                        $menusub3Rec = Menu::getMenuByParent($menusub2Row->id, 1);
                        $chkparent3 = (!empty($menusub3Rec)) ? 1 : 0;
                        $drop3 = !empty($menusub3Rec) ? 'class="dropdown"' : '';
                        $result .= '<li id="menu-item-' . $menusub2Row->id . '" ' . $drop3 . '>';
                        $result .= getMenuList($menusub2Row->name, $menusub2Row->linksrc, $menusub2Row->linktype, '', $chkparent3);
                        /* Fourth Level Menu */
                        if ($menusub3Rec):
                            $result .= '<ul class="dropdown-menu">';
                            foreach ($menusub3Rec as $menusub3Row):
                                $menusub4Rec = Menu::getMenuByParent($menusub3Row->id, 1);
                                $chkparent4 = (!empty($menusub4Rec)) ? 1 : 0;
                                $result .= '<li id="menu-item-' . $menusub2Row->id . '">';
                                $result .= getMenuList($menusub3Row->name, $menusub3Row->linksrc, $menusub3Row->linktype, '', $chkparent4);
                                /* Fifth Level Menu */
                                if ($menusub4Rec):
                                    $result .= '<ul>';
                                    foreach ($menusub4Rec as $menusub4Row):
                                        $menusub5Rec = Menu::getMenuByParent($menusub4Row->id, 1);
                                        $chkparent5 = (!empty($menusub4Rec)) ? 1 : 0;
                                        $result .= '<li>' . getMenuList($menusub4Row->name, $menusub4Row->linksrc, $menusub4Row->linktype, $chkparent5) . '</li>';
                                    endforeach;
                                    $result .= '</ul>';
                                endif;
                                $result .= '</li>';
                            endforeach;
                            $result .= '</ul>';
                        endif;
                        $result .= '</li>';
                    endforeach;
                    $result .= '</ul>';
                endif;
                $result .= '</li>';
            endforeach;
            $result .= '</ul>';
        endif;
        $result .= '</li>';
    endforeach;
    $result .= '';
endif;

$jVars['module:res-menu'] = $result;

/*Menu responsive*/

if ($menuRec):
    $result = '';
    foreach ($menuRec as $menuRow):
        $linkActive = $PlinkActive = '';
        $tot = strlen(SITE_FOLDER) + 2;
        $data = substr($_SERVER['REQUEST_URI'], $tot);

        if (!empty($data)):
            $linkActive = ($menuRow->linksrc == $data) ? " active" : "";
            $parentInfo = Menu::find_by_linksrc($data);
            if ($parentInfo):
                $PlinkActive = ($menuRow->id == $parentInfo->parentOf) ? " active " : "";
            endif;
        endif;

        $menusubRec = Menu::getMenuByParent($menuRow->id, 1);
        $subclass = ($menusubRec) ? ' ' : '';
        $classLink = !empty($menusubRec) ? ' block p-4 text-sm md:text-xl font-semibold text-[#f5f5dc] hover:bg-[#ef4c23] rounded-lg transition-all duration-200 ease-in-out ' : ' block p-4 text-sm md:text-xl font-semibold text-[#f5f5dc] hover:bg-[#ef4c23] rounded-lg transition-all duration-200 ease-in-out ';
        $chkchild = !empty($menusubRec) ? '1' : '';
        $drop1 = !empty($menusubRec) ? ' <i class="ti-angle-down"></i>' : '';
        $result .= '<li class="mb-1">';
        $result .= getMenuList($menuRow->name, $menuRow->linksrc, $menuRow->linktype, $linkActive . $PlinkActive . $classLink, $chkchild, $drop1);
        /* Second Level Menu */
        // if ($menusubRec):
        //     $result .= '';
        //     foreach ($menusubRec as $menusubRow):
        //         $menusub2Rec = Menu::getMenuByParent($menusubRow->id, 1);
        //         $chkparent2 = (!empty($menusub2Rec)) ? 1 : 0;
        //         $drop2 = !empty($menusub2Rec) ? 'class="dropdown"' : '';
        //         $classLink = !empty($menusubRec) ? ' block w-full py-2 px-3 rounded-lg text-gray-800 hover:text-[#f5f5dc] hover:bg-[#ef4c23] transition-all duration-200 ease-in-out  ' : ' block w-full py-2 px-3 rounded-lg text-gray-800 hover:text-[#f5f5dc] hover:bg-[#ef4c23] transition-all duration-200 ease-in-out ';

        //         $result .= '<li class="w-full px-2">';
        //         $result .= getMenuList($menusubRow->name, $menusubRow->linksrc, $menusubRow->linktype, $classLink, $chkparent2);
        //         /* Third Level Menu */
        //         if ($menusub2Rec):
        //             $result .= '<ul class="dropdown-menu">';
        //             foreach ($menusub2Rec as $menusub2Row):
        //                 $menusub3Rec = Menu::getMenuByParent($menusub2Row->id, 1);
        //                 $chkparent3 = (!empty($menusub3Rec)) ? 1 : 0;
        //                 $drop3 = !empty($menusub3Rec) ? 'class="dropdown"' : '';
        //                 $result .= '<li id="menu-item-' . $menusub2Row->id . '" ' . $drop3 . '>';
        //                 $result .= getMenuList($menusub2Row->name, $menusub2Row->linksrc, $menusub2Row->linktype, '', $chkparent3);
        //                 /* Fourth Level Menu */
        //                 if ($menusub3Rec):
        //                     $result .= '<ul class="dropdown-menu">';
        //                     foreach ($menusub3Rec as $menusub3Row):
        //                         $menusub4Rec = Menu::getMenuByParent($menusub3Row->id, 1);
        //                         $chkparent4 = (!empty($menusub4Rec)) ? 1 : 0;
        //                         $result .= '<li id="menu-item-' . $menusub2Row->id . '">';
        //                         $result .= getMenuList($menusub3Row->name, $menusub3Row->linksrc, $menusub3Row->linktype, '', $chkparent4);
        //                         /* Fifth Level Menu */
        //                         if ($menusub4Rec):
        //                             $result .= '<ul>';
        //                             foreach ($menusub4Rec as $menusub4Row):
        //                                 $menusub5Rec = Menu::getMenuByParent($menusub4Row->id, 1);
        //                                 $chkparent5 = (!empty($menusub4Rec)) ? 1 : 0;
        //                                 $result .= '<li>' . getMenuList($menusub4Row->name, $menusub4Row->linksrc, $menusub4Row->linktype, $chkparent5) . '</li>';
        //                             endforeach;
        //                             $result .= '</ul>';
        //                         endif;
        //                         $result .= '</li>';
        //                     endforeach;
        //                     $result .= '</ul>';
        //                 endif;
        //                 $result .= '</li>';
        //             endforeach;
        //             $result .= '</ul>';
        //         endif;
        //         $result .= '</li>';
        //     endforeach;
        //     $result .= '</ul>';
        // endif;
        $result .= '</li>';
    endforeach;
    $result .= '';
endif;

$jVars['module:res-menu-responsive'] = $result;


// Footer Menu List
$resfooter = '';
$FmenuRec = Menu::getMenuByParent(0, 2);
if ($FmenuRec):
    $resfooter .= '<ul class="footer-explore-list list-unstyled">';

    foreach ($FmenuRec as $FmenuRow):
        $resfooter .= '<li>';
        $resfooter .= getMenuList($FmenuRow->name, $FmenuRow->linksrc, $FmenuRow->linktype, '');
        $resfooter .= '</li>';
    endforeach;
    $resfooter .= '</ul>';
endif;
$jVars['module:footer-menu'] = $resfooter;

?>