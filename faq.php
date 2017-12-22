<?php namespace ProcessWire;

// faq.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition. 
// See the _func.php for the bsRenderAccordion() function definition. 
// See the README.txt for more information. 

$content = bsRenderBreadcrumb($page);
// Primary content is the page's body copy

$content .= bsRenderAccordion($page->faq, 'headline', 'body'); 
