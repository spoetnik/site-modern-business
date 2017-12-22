<?php namespace ProcessWire;

// portfolio-1-col.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition.
// See README.txt for more information

$content  = bsRenderBreadcrumb($page);

// Find all portfolioitems
$projects = $pages->find("sort=-created, template=portfolio-item, limit=4");

// If project are foundlist them all paginated
if($projects->count) {

    // Loop over found projects
    foreach($projects as $project){
        // Resize the first image
        $primaryimage = $project->images->first();
        if($primaryimage) $primaryimageresized = $primaryimage->width(635);

        $projectblock .= "<div class='row'>";
        $projectblock .= "  <div class='col-md-7'>";
        $projectblock .= "      <a href={$project->url}'>";
        $projectblock .= "          <img class='img-fluid rounded mb-3 mb-md-0' src='{$primaryimageresized->url}' alt=''>";
        $projectblock .= "      </a>";
        $projectblock .= "  </div>";
        $projectblock .= "  <div class='col-md-5'>";
        $projectblock .= "      <h3>{$project->title}</h3>";
        $projectblock .= "      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>";
        $projectblock .= "      <a class='btn btn-primary' href='{$project->url}'>View Project";
        $projectblock .= "          <span class='glyphicon glyphicon-chevron-right'></span>";
        $projectblock .= "      </a>";
        $projectblock .= "  </div>";
        $projectblock .= "</div>";
        $projectblock .= "<hr>";


     }
  // add the projectblock to the output
  $content .= $projectblock;

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
