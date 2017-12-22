<?php namespace ProcessWire;

// contact.php template file
// See the _func.php for the bsRenderBreadcrumb() function definition. 
// See the README.txt for more information. 

if($config->ajax) {
    $useMain = false;    
    // Check for empty fields
    if(empty($sanitizer->text($input->post->name))   ||
    empty($sanitizer->text($input->post->email))     ||
    empty($sanitizer->text($input->post->phone))     ||
    empty($sanitizer->text($input->post->message))   ||
    !filter_var($sanitizer->text($input->post->email),FILTER_VALIDATE_EMAIL))
    {
        echo "No arguments Provided!";
        return false;
    }

    $name = $sanitizer->text($input->post->name);
    $email_address = $sanitizer->text($input->post->email);
    $phone = $sanitizer->text($input->post->phone);
    $message = $sanitizer->text($input->post->message);

    // This two steps to help avoid spam
    $headers .= "Message-ID: <".gettimeofday()." TheSystem@".$_SERVER['SERVER_NAME'].">\r\n";
    $headers .= "X-Mailer: PHP v".phpversion()."\r\n";         

    // With message
    
    $headers .= "Content-Type: text/html; charset=utf-8\r\n";
    $headers .= "Content-Transfer-Encoding: 8bit\r\n";
    $headers .= "".$message."\n";
    $headers .= "--".$num."\n";

    // Create the email and send the message
    $to = 'm.degeus@nise.nl'; // Add your email address inbetween the '' replacing yourname@yourdomain.com - This is where the form will send a message to.
    $email_subject = "Website Contact Form:  $name";
    $email_body = "You have received a new message from your website contact form.\n\n"."Here are the details:\n\nName: $name\n\nEmail: $email_address\n\nPhone: $phone\n\nMessage:\n$message";
    $headers .= "From: noreply@yourdomain.com\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.
    $headers .= "Reply-To: $email_address";   
    if(mail($to,$email_subject,$email_body,$headers)){
        return true;
    }else{
        return false;
    }
    exit();
} else {
    $content = bsRenderBreadcrumb($page);
    
    $content .= "<div class='row'>";
    $content .= "  <div class='col-lg-8 mb-4'>";
    $content .= "    <iframe width='100%' height='400px' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com/maps?&q={$page->address_1}, {$page->address_2}, {$page->city}, {$page->zipcode} &output=embed'></iframe>";
    //$content .= "    <iframe width='100%' height='400px' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com/maps?&amp;q=%20Regentesselaan%20142%2C%20Den%20Haag&amp;output=embed'></iframe>";
    $content .= "  </div>";
    $content .= "  <div class='col-lg-4 mb-4'>";
    $content .= "    <h3>Contact Details</h3>";
    $content .= "    <p>";
    if($page->address_1) $content .= $page->address_1;
    if($page->address_2) $content .= "<br>" .$page->address_2;
    if($page->city) $content .= "<br>" .$page->city;
    if($page->zipcode) $content .= ", " .$page->zipcode;
    if($page->country) $content .= "<br>" .$page->country;
    if($page->state) $content .= ", " .$page->state;
    $content .= "   </p>";
    $content .=     $page->body;
    $content .= "  </div>";
    $content .= "</div>";
    
    $sent = false;
    
    
    $contactform .= "<div class='row'>";
    $contactform .= "<div class='col-lg-8 mb-4'>";
    $contactform .= "  <h3>Send us a Message</h3>";
    $contactform .= "  <form name='sentMessage' id='contactForm' novalidate>";
    $contactform .= "   <div class='control-group form-group'>";
    $contactform .= "     <div class='controls'>";
    $contactform .= "        <label>Full Name:</label>";
    $contactform .= "        <input type='text' class='form-control' id='name' required data-validation-required-message='Please enter your name.'>";
    $contactform .= "       <p class='help-block'></p>";
    $contactform .= "     </div>";
    $contactform .= "   </div>";
    $contactform .= "   <div class='control-group form-group'>";
    $contactform .= "      <div class='controls'>";
    $contactform .= "       <label>Phone Number:</label>";
    $contactform .= "       <input type='tel' class='form-control' id='phone' required data-validation-required-message='Please enter your phone number.'>";
    $contactform .= "     </div>";
    $contactform .= "   </div>";
    $contactform .= "   <div class='control-group form-group'>";
    $contactform .= "      <div class='controls'>";
    $contactform .= "        <label>Email Address:</label>";
    $contactform .= "       <input type='email' class='form-control' id='email' required data-validation-required-message='Please enter your email address.'>";
    $contactform .= "     </div>";
    $contactform .= "   </div>";
    $contactform .= "   <div class='control-group form-group'>";
    $contactform .= "     <div class='controls'>";
    $contactform .= "        <label>Message:</label>";
    $contactform .= "        <textarea rows='10' cols='100' class='form-control' id='message' required data-validation-required-message='Please enter your message' maxlength='999' style='resize:none'></textarea>";
    $contactform .= "      </div>";
    $contactform .= "   </div>";
    $contactform .= "   <div id='success'></div>";
    $contactform .= "   <!-- For success/fail messages -->";
    $contactform .= "   <button type='submit' class='btn btn-primary' id='sendMessageButton'>Send Message</button>";
    $contactform .= "  </form>";
    $contactform .= "</div>";
    $contactform .= "</div>";
    
    $contactform .= "<!-- Contact form JavaScript -->";
    
    $pagescript .= "<script src='{$config->urls->templates}assets/js/jqBootstrapValidation.js'></script>";
    $pagescript .= "<script src='{$config->urls->templates}assets/js/contact_me.js'></script>";
    
    $content .= $contactform;
}