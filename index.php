<?php

$folderName = "frontend";

include '{$folderName}/js/app.js';


$template = "{$folderName}/index.html";

if (file_exists($template)) {
    include $template;
} else {
    echo "Template not found!";
}
