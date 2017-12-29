<?php namespace ProcessWire;

/**
 * /site/templates/_func.php
 * 
 * Example of shared functions used by template files
 *
 * This file is currently included by _init.php 
 *
 * For more information see README.txt
 *
 */


/**
 * Given a group of pages, render a simple <ul> navigation
 *
 * This is here to demonstrate an example of a simple shared function.
 * Usage is completely optional.
 *
 * @param PageArray $items
 * @return string
 *
 */
function renderNav(PageArray $items) {

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// render markup for each navigation item as an <li>
		if($item->id == wire('page')->id) {
			// if current item is the same as the page being viewed, add a "current" class to it
			$out .= "<li class='current'>";
		} else {
			// otherwise just a regular list item
			$out .= "<li>";
		}

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a> ";

		// if the item has summary text, include that too
		if($item->summary) $out .= "<div class='summary'>$item->summary</div>";

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='nav'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}


/**
 * Given a group of pages, render Bootstrap 4 <ul> navigation
 *
 * This is here to demonstrate an example of a simple shared function.
 * Usage is completely optional.
 *
 * @param PageArray $items
 * @return string
 *
 */
function bsRenderNav(PageArray $items) {
	// $out is where we store the markup we are creating in this function
	$out = '';	

	$out .= "<ul class='navbar-nav ml-auto'>"; 
	// Print the 'Home' link
	$out .= "<li class='nav-item'><a class='nav-link' href='{$homepage->url}'>{$homepage->title}</a></li>";
	// render markup for each navigation item as an <li>
	foreach( $items as $item ) {
		// Set subnavigation to empty
		$childrenoutput = '';
		// Set A href properties to empty
		$aprops = '';
		// Default Bootraps Navbar item class
		$liclass = 'nav-item';
		$aclass = 'nav-link';
		// if current item is the same as the page being viewed, add a "active" class to it
		if($item->id == wire('page')->id) $liclass .= ' active';

		// if the item has children, add the dropdown class
		if($item->hasChildren){
			// class for the li item
			$liclass .= ' dropdown';
			// class for the a element
			$aclass .= ' dropdown-toggle';
			// extra porperties for the a element
			$aprops = 'id="navbarDropdown{$item->title}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"';
			// generate output for the children.
			$childrenoutput = "<div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdown{$item->title}'>";
			// Don't display single portfolioitems in the menu
			foreach( $item->children->not('template=portfolio-item') as $child) {
				$childrenoutput .= "<a class='dropdown-item' href='{$child->url}'>{$child->title}</a>";
			}
			$childrenoutput .= "</div>";
		}

		$out .= "<li class='{$liclass}'>";
		$out .= "  <a class='{$aclass}' href='{$item->url}' {$aprops}>{$item->title}</a>";
		// Render children output if any
		if($childrenoutput) $out .= $childrenoutput;
		$out .= "</li>";
	}
	$out .= "</ul>";

	// return the markup we generated above
	return $out;	
}





/**
 * Given a group of pages, render a <ul> navigation tree
 *
 * This is here to demonstrate an example of a more intermediate level
 * shared function and usage is completely optional. This is very similar to
 * the renderNav() function above except that it can output more than one
 * level of navigation (recursively) and can include other fields in the output.
 *
 * @param array|PageArray $items
 * @param int $maxDepth How many levels of navigation below current should it go?
 * @param string $fieldNames Any extra field names to display (separate multiple fields with a space)
 * @param string $class CSS class name for containing <ul>
 * @return string
 *
 */
function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav') {

	// if we were given a single Page rather than a group of them, we'll pretend they
	// gave us a group of them (a group/array of 1)
	if($items instanceof Page) $items = array($items);

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class to it
		$out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a>";

		// if there are extra field names specified, render markup for each one in a <div>
		// having a class name the same as the field name
		if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
			$value = $item->get($fieldName);
			if($value) $out .= " <div class='$fieldName'>$value</div>";
		}

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children 
		if($item->hasChildren() && $maxDepth) {
			if($class == 'nav') $class = 'nav nav-tree';
			$out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class);
		}

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='$class'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}


/**
 * Given a page, render a <ol> breadcrumb to te ultimate parent
 *
 * @param Page $page
 * @param string $class CSS class name for containing <li>
 * @return string
 *
 */
function bsRenderBreadcrumb($page, $class = 'breadcrumb-item') {
	$out = '';
	$out .= "<ol class='breadcrumb'>";
	foreach($page->parents() as $item) {
		$out .=  "<li class='{$class}'><a href='$item->url'>$item->title</a></li> ";
	}
	$out .= "<li class='{$class} active'>{$page->title}</li>";
	$out .= "</ol>";

	return $out;
}


/**
 * Render a Bootstrap Card
 * 
 * @param Image $image
 * @param string $header Card header
 * @param string $body Card body
 * @param string $footer Card footer
 * @param string $class Card classes
 * @return string
 * 
 */
function bsRenderCard($image, $header, $body, $footer, $class = 'h-100 text-center') {
	$out = '';
	$out .= "<div class='card $class'>";

	if($image) $out .= "<img class='card-img-top' src='{$image}' alt=''>";	
	if($header) $out .= "<h4 class='card-header'>{$header}</h4>";	
	if($body) $out .= "<div class='card-body'>$body</div>";
	if($footer) $out .= "<div class='card-footer'>$footer</div>";
	$out .= "</div>";

	return $out;
}



/**
 * Given a group of elements, render an accordion
 *
 * @param array|PageArray $items
 * @param string $headerField the field containing the header
 * @param string $bodyField the field containing the body
 * @return string
 *
 */
function bsRenderAccordion($items, $headerField, $bodyField) {
	// Set output to empty
	$out = '';
	// Set the title of the FAQ-item to empty
	$title = '';
	// Set the body of the FAQ-item to empty
	$body= '';
	// reset the counter
	$count = 0;
	// First item is expanded
	$expanded = "aria-expanded='true'";
	// First item is expanded
	$showclass = " show"; 
	$out = "<div class='mb-4' id='accordion' role='tablist' aria-multiselectable='true'>";
	foreach($items as $item) {

		// Set this items title
		$title = $item->$headerField;
		// Set this items body
		$body = $item->$bodyField;

		$out .= "   <div class='card'>";
		$out .= "<div class='card-header' role='tab' id='heading$count'>";
		$out .= "  <h5 class='mb-0'>";
		$out .= "	<a class='collapsed' data-toggle='collapse' data-parent='#accordion' href='#collapse$count' $expanded aria-controls='collapse$count'>$title</a>";
		$out .= "  </h5>";
		$out .= "</div>";

		$out .= "<div id='collapse$count' class='collapse $showclass' role='tabpanel' aria-labelledby='heading$count'>";
		$out .= "  <div class='card-body'>";
		$out .= "	$body";
		$out .= "  </div>";
		$out .= "</div>";
		$out .= "</div>";

		// Next items are not expanded
		$expanded = "aria-expanded='false'";
		// Next items are not expanded
		$showclass = '';
		$count++;
	}

	$out .= " </div>";
	return $out;
}


/**
 * Given a group of elements, render an Carousel
 *
 * @param array|PageArray $items
 * @param string $imagefield the field containing the background image
 * @param string $headerField the field containing the header
 * @param string $bodyField the field containing the body
 * @return string
 *
 */
function bsRenderCarousel($items, $imagefield, $headerField, $bodyField) {
	// Empty the carousel indicators output
	$IndicatorsOut = "";
	// Empty the carousel items output
	$ItemOut = "";
	// reset the counter
	$count = 0;
	foreach($items as $item) {	
		// Set this items image
		$image = $item->$imagefield->first();
		if($image) $carouselimageresized = $image->width(1900);
		
		// Set this items title
		$title = $item->$headerField;
		// Set this items body
		$body = $item->$bodyField;

		if($count <1){
			// Set the first slide to active
			$IndicatorsOut .= "<li data-target='#carouselExampleIndicators' data-slide-to='$count' class='active'></li>";
			$ItemOut .="	<div class='carousel-item active' style='background-image: url($carouselimageresized->url)'>";
		} else {
			$IndicatorsOut .= "<li data-target='#carouselExampleIndicators' data-slide-to='$count' '></li>";
			$ItemOut .="	<div class='carousel-item' style='background-image: url($carouselimageresized->url)'>";
		}
	  $ItemOut .="	  <div class='carousel-caption d-none d-md-block'>";
	  $ItemOut .="		<h3>$title</h3>";
	  $ItemOut .=		$body;
	  $ItemOut .="	  </div>";
	  $ItemOut .="	</div>";
	  $count++;
	}

	$out .="  <div id='carouselExampleIndicators' class='carousel slide' data-ride='carousel'>";
	$out .="  <ol class='carousel-indicators'>";
	$out .= 	$IndicatorsOut;
	$out .="  </ol>";
	$out .="  <div class='carousel-inner' role='listbox'>";
	$out .=		$ItemOut;
	$out .="  </div>";
	$out .="  <a class='carousel-control-prev' href='#carouselExampleIndicators' role='button' data-slide='prev'>";
	$out .="	<span class='carousel-control-prev-icon' aria-hidden='true'></span>";
	$out .="	<span class='sr-only'>Previous</span>";
	$out .="  </a>";
	$out .="  <a class='carousel-control-next' href='#carouselExampleIndicators' role='button' data-slide='next'>";
	$out .="	<span class='carousel-control-next-icon' aria-hidden='true'></span>";
	$out .="	<span class='sr-only'>Next</span>";
	$out .="  </a>";
	$out .="</div>";

	return $out;
}


/**
 * Render a ProcessWire comment using Uikit markup
 * 
 * (work in progress) 
 *
 * @param Comment $comment
 * @param array|string $options Coming soon
 * @return string
 *
 */
function Comment(Comment $comment, $options = array()) {

	$defaults = array(
		'comments' => null, // instance of CommentArray when called from ukComments()
		'depth' => 0,
	);

	// $options = _ukMergeOptions($defaults, $options); 
	$text = $comment->getFormatted('text');
	$cite = $comment->getFormatted('cite');
	$website = $comment->getFormatted('website');
	$field = $comment->getField();
	$page = $comment->getPage();
	$classes = array();
	$metas = array();
	$gravatar = '';
	$replies = '';

	if($field->get('useGravatar')) {
		$img = $comment->gravatar($field->get('useGravatar'), $field->get('useGravatarImageset'));
		if($img) $gravatar = "<img class='d-flex mr-3 rounded-circle' src='$img' alt='$cite'>";
	}

	if($website) $cite = "<a href='$website' rel='nofollow' target='_blank'>$cite</a>";
	$created = wireDate('relative', $comment->created);

	if($field->get('usePermalink')) {
		$permalink = $page->httpUrl;
		$urlSegmentStr = $this->wire('input')->urlSegmentStr;
		if($urlSegmentStr) $permalink .= rtrim($permalink, '/') . $urlSegmentStr . '/';
		$permalink .= '#Comment' . $comment->id;
		$permalink = "<a href='$permalink'>" . __('Permalink') . "</a>";
		$metas[] = "<li>$permalink</li>";
	}

	$classes = implode(' ', $classes);
	$metas = implode('', $metas);

	$out = "
	<div class='media mb-4' id='Comment$comment->id' data-comment='$comment->id'>
	  $gravatar
	  <div class='media-body'>
	    <h5 class='mt-0'>$created</h5>
	    $text
	  </div>
	</div>
	$replies
	";

	return $out;
}

/**
 * Render a list of ProcessWire comments using Uikit markup
 *
 * @param CommentArray $comments
 * @param array|string $options Options to modify default behavior
 *  - `id` (string): HTML id attribute of the comments list (default='comments').
 *  - `parent_id` (int): Database id of the parent comment, when rendering a comment thread.
 * @return string
 *
 */
function Comments(CommentArray $comments, $options = array()) {

	$defaults = array(
		'id' => 'comments',
		'parent_id' => 0,
		'comments' => $comments, // for ukComment() method only
	);

	if(!count($comments)) return '';

	
	foreach($comments as $comment) {
		$out .= Comment($comment, $options);
	}
	
	return $out;
}

/**
 * Render a comment posting form
 *
 * @param CommentArray $comments
 * @param array $options See `CommentForm` class for all options.
 * @return string
 *
 */
function CommentForm(CommentArray $comments, array $options = array()) {

	$defaults = array(
		'headline' => "",
		'successMessage' =>
			__('Thank you, your comment has been posted.'),
		'pendingMessage' =>
			__('Your comment has been submitted and will appear once approved by the moderator.'),
		'errorMessage' =>
			__('Your comment was not saved due to one or more errors.') . ' ' .
			__('Please check that you have completed all fields before submitting again.'),
	);

	if(!isset($options['attrs']) || !isset($options['attrs']['class'])) {
		$options['attrs'] = array('class' => 'uk-comment uk-comment-primary');
	}

	$adjustments = array(
		"<input type='text'" => "<input type='text' class='form-control'",
		"<p class='CommentForm" => "<p class='CommentForm",
		"<textarea " => "<textarea class='form-control' ",
		"<button " => "<button class='btn btn-primary' ",
		"<label " => "<label class='' ",
	);

	$out = "<div class='card my-4'>";
	$out .= "  <h5 class='card-header'>Leave a Comment:</h5>";
	$out .= "  <div class='card-body'>";
	$out .= $comments->renderForm($options);
	$out .= "  </div>";
	$out .= "</div>";

	$out = str_replace(array_keys($adjustments), array_values($adjustments), $out);

	return $out;
}