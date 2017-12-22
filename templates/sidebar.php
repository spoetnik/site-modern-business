<?php namespace ProcessWire;

// basic-page.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition.
// See README.txt for more information

$content = bsRenderBreadcrumb($page);
// Primary content is the page's body copy
$content .= "<div class='row'>";
$content .= "   <div class='col-lg-3 mb-4'>";
$content .=         $page->sidebar;
$content .= "   </div>";
$content .= "   <div class='col-lg-9 mb-4'>";
$content .=         $page->body;
$content .= "   </div>";
$content .= "</div>";
