<?php namespace ProcessWire;

// 404.php template file
// Generate navigation that descends up to 4 levels into the tree.
// See the _func.php for the bsRenderBreadcrumb() function definition. 
// See the _func.php for the renderNavTree() function definition. 
// See the README.txt for more information. 

$content = bsRenderBreadcrumb($page);
$content .= "<div class='jumbotron'>";
$content .= "<h1 class='display-1'>{$title}</h1>";
$content .= $page->body;
$content .= renderNavTree($homepage, 4, '', '');
$content .= "</div>";

