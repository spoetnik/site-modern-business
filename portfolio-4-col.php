<?php namespace ProcessWire;

// portfolio-1-col.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition.
// See README.txt for more information

$content  = bsRenderBreadcrumb($page);

// Find all portfolioitems
$projects = $pages->find("sort=-created, template=portfolio-item, limit=8");

// If project are foundlist them all paginated
if($projects->count) {

    // Loop over found projects
    foreach($projects as $project){
        // Resize the first image
        $primaryimage = $project->images->first();
        if($primaryimage) $primaryimageresized = $primaryimage->width(253);

        $projectblock .= "        <div class='col-lg-3 col-md-4 col-sm-6 portfolio-item'>";
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

// Create a pager out of this find result
$pagination = $projects->renderPager(array(
    'previousItemLabel' => "&laquo;",
    'nextItemLabel' => "&raquo;",
    'listMarkup' => "<ul class='pagination justify-content-center'>{out}</ul>",
    'itemMarkup' => "<li class='{class} page-item'>{out}</li>",
    'linkMarkup' => "<a class='page-link' href='{url}'>{out}</a>",
    'currentItemClass' => "active",
    'currentLinkMarkup' => "<a class='page-link active' href='{url}'>{out}</a>"
    ));
  // add the pagination to the output
  $content .=  $pagination;
}
