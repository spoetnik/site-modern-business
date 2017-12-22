<?php namespace ProcessWire;

// portfolio-item.php template file 
// Generate image next to body content.
// See the _func.php for the bsRenderCard() function definition. 
// See the README.txt for more information. 


$content  = bsRenderBreadcrumb($page);

$primaryimage = $page->images->first();
if($primaryimage) $primaryimageresized = $primaryimage->width(730);

$content .= "   <div class='row'>";
$content .= "        <div class='col-md-8'>";
if($primaryimage) $content .="<img class='img-fluid' src='{$primaryimageresized->url}' alt=''>";
$content .= "       </div>";

$content .= "        <div class='col-md-4'>";
$content .= $page->body;
$content .= "        </div>";

$content .= "      </div>";

// Find all newest 4 portfolioitems, excluding the current page
$projects = $pages->find("template=portfolio-item, limit=4, sort=-created, id!=$page");

// If project are found, display a 'Related projects' block
if($projects->count) {

    $RelatedProjects .= "<h3 class='my-4'>Related Projects</h3>";

    $RelatedProjects .= "<div class='row'>";
    // Loop over found projects
    foreach($projects as $project){
        // Resize the first image
        $primaryimage = $project->images->first();
        if($primaryimage) $primaryimageresized = $primaryimage->width(255);

        $RelatedProjects .= "  <div class='col-md-3 col-sm-6 mb-4'>";
        $RelatedProjects .= "    <a href='{$project->url}'>";
        $RelatedProjects .= "      <img class='img-fluid' src='{$primaryimageresized->url}' alt=''>";
        $RelatedProjects .= "    </a>";
        $RelatedProjects .= "  </div>";
     }

    $RelatedProjects .= "</div>";
    // Add teh related projects to the output
    $content .= $RelatedProjects;
}