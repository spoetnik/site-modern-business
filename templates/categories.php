<?php namespace ProcessWire;

// categories.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition.
// See README.txt for more information

$content = bsRenderBreadcrumb($page);
// Primary content is the page's body copy
$content .= $page->body; 
