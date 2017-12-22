<?php namespace ProcessWire;

// home.php (homepage) template file.
// See the _func.php for the bsRenderAccordion() function definition. 

// See README.txt for more information

// Display the carousel in the header
$headercontent .= bsRenderCarousel($page->carousel, 'images', 'headline', 'body'); 

// Display the cards
$content = "<div class='row'>";
foreach($page->card as $carditem) {
    $carditemheader = $carditem->title;
    $carditembody = $carditem->body;
    $carditemfooter = $carditem->card_footer;

    $content .= "<div class='col-lg-4 col-sm-6 portfolio-item'>";
    $content .= bsRenderCard('', $carditemheader, $carditembody, $carditemfooter, 'h-100');
    $content .= "</div>";    
}
$content .= "</div>";

// Display latest 6 portfolio items
// Find all portfolioitems
$projects = $pages->find("sort=-created, template=portfolio-item, limit=6");

// If project are foundlist them all paginated
if($projects->count) {

    $content .= "<h2>Portfolio Heading</h2>";

    // Loop over found projects
    foreach($projects as $project){
        // Resize the first image
        $primaryimage = $project->images->first();
        if($primaryimage) $primaryimageresized = $primaryimage->width(348);

        $projectblock .= "        <div class='col-lg-4 col-sm-6 portfolio-item'>";
        $projectblock .= "          <div class='card h-100'>";
        $projectblock .= "            <a href='{$project->url}'><img class='card-img-top' src='{$primaryimageresized->url}' alt=''></a>";
        $projectblock .= "            <div class='card-body'>";
        $projectblock .= "              <h4 class='card-title'>";
        $projectblock .= "                <a href='{$project->url}'>{$project->title}</a>";
        $projectblock .= "              </h4>";
        $projectblock .= "              <p class='card-text'>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>";
        $projectblock .= "            </div>";
        $projectblock .= "          </div>";
        $projectblock .= "        </div>";
     }
  // add the projectblock to the output
  $content .= "<div class='row'>";
  $content .= $projectblock;
  $content .= "</div>";
}
// Primary content is the page body copy
$content .= $page->body; 