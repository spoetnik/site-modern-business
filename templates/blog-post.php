<?php namespace ProcessWire;

// blog-post.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition.
// See README.txt for more information

$content = bsRenderBreadcrumb($page);
// Primary content is the page's body copy
$subheading = "by <a href='{$page->createdUser->url}' >{$page->createdUser->name}</a>";

$content .= "<div class='row'>";
$content .= "  <div class='col-lg-8'>";

$headerimage = $page->images->first();
if($headerimage){
  $headerimageresized = $headerimage->width(730);
  $content .= "<img class='img-fluid rounded' src='{$headerimageresized->url}' alt=''>";
  $content .= "<hr>";
}

$content .= "<p>Posted on {$page->date}</p><hr>";

if ($page->summary) {
    $content .= "<p class='lead'>$page->summary</p>";
}

$content .= $page->body; 

$comments = $page->comments;

// comment form    
$content .= CommentForm($comments);

// comment list 
if(count($comments)) {
  $content .= Comments($comments);
}

$content .= "</div>";
$content .= "<div class='col-md-4'>";
$content .= "
<!-- Search Widget -->
<div class='card mb-4'>
  <h5 class='card-header'>Search</h5>
  <div class='card-body'>
    <form  action='{$pages->get('template=search')->url}' method='get' class='search'>
    <div class='input-group'>
      <input type='search' id='search-query' name='q' class='form-control' placeholder='Search for...'>
      <span class='input-group-btn'>
        <button type='submit' class='btn btn-secondary'>Go!</button>
      </span>
    </form>
    </div>
  </div>
</div>
";

$content .="
<!-- Categories Widget -->
<div class='card my-4'>
  <h5 class='card-header'>Categories</h5>
  <div class='card-body'>
    <div class='row'>
      <div class='col-lg-6'>
        <ul class='list-unstyled mb-0'>
          <li>
            <a href='#'>Web Design</a>
          </li>
          <li>
            <a href='#'>HTML</a>
          </li>
          <li>
            <a href='#'>Freebies</a>
          </li>
        </ul>
      </div>
      <div class='col-lg-6'>
        <ul class='list-unstyled mb-0'>
          <li>
            <a href='#'>JavaScript</a>
          </li>
          <li>
            <a href='#'>CSS</a>
          </li>
          <li>
            <a href='#'>Tutorials</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
";
$content .= "  </div>";
$content .= "</div>";
