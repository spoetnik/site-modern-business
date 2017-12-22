<?php namespace ProcessWire;

// about.php template file
// Generate image next to body content.
// generate Cards from team repeater field
// See the _func.php for the bsRenderCard() function definition. 
// Display 'customers' images
// See the README.txt for more information. 


$content  = bsRenderBreadcrumb($page);

$primaryimage = $page->images->first();
if($primaryimage) $primaryimageresized = $primaryimage->width(540);
if($primaryimage) $content .= "<img class='img-fluid rounded float-left gap-right' src='{$primaryimageresized->url}' alt=''>";

$content .= $page->body;

$content .= "<h2>Our Team</h2>";
$content .= "<div class='row'>";
foreach($page->team as $teammember) {
    $teammemberimage = $teammember->team_image->first();
    if($teammemberimage) $teamimageresized = $teammemberimage->width(750);
    $teammemberbody = "<h4 class='card-title'>{$teammember->title}</h4>";
    $teammemberbody .= "<h6 class='card-subtitle mb-2 text-muted'>{$teammember->headline}</h6>";
    $teammemberbody .= "<p class='card-text'>{$teammember->body}</p>";
    $teammemberfooter = "<a href='mailto:{$teammember->email}'>{$teammember->email}</a>";

    $content .= "<div class='col-lg-4 mb-4'>";
    $content .= bsRenderCard($teamimageresized->url, '', $teammemberbody, $teammemberfooter, 'h-100 text-center');
    $content .= "</div>";
    
}
$content .= "</div>";

$content .= "<h2>Our Customers</h2>";
$content .= "<div class='row'>";
foreach($page->customers as $customer) {
    $customerimage = $customer->width(160);
    $content .= "<div class='col-lg-2 col-sm-4 mb-4'>";
    $content .= "    <img class='img-fluid' src='http://placehold.it/500x300' alt=''>";
    $content .= "</div>";
}
$content .= "</div>";
