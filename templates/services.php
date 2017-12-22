<?php namespace ProcessWire;

// services.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition. 
// Generate big header image.
// Render the page cards
// See the _func.php for the bsRenderCard() function definition. 
// See the README.txt for more information. 

$content = bsRenderBreadcrumb($page);

$headerimage = $page->images->first();
if($headerimage) $headerimageresized = $headerimage->width(1110);

$content .= "<img class='img-fluid rounded mb-4' src='{$headerimageresized->url}'>";

$content .= "<div class='row'>";

foreach($page->card as $carditem) {
    $carditemheader = $carditem->title;
    $carditembody = $carditem->body;
    $carditemfooter = $carditem->card_footer;

    $content .= "<div class='col-lg-4 mb-4'>";
    $content .= bsRenderCard('', $carditemheader, $carditembody, $carditemfooter, 'h-100');
    $content .= "</div>";    
}

$content .= "</div>";


