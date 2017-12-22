# --- WireDatabaseBackup {"time":"2017-12-22 06:27:02","user":"","dbName":"processwire","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_address_1`;
CREATE TABLE `field_address_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_address_1` (`pages_id`, `data`) VALUES('1015', '3481 Melrose Place');

DROP TABLE IF EXISTS `field_address_2`;
CREATE TABLE `field_address_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<div class=\"row\">\n<div class=\"col-lg-6\">\n<h2>Modern Business Features</h2>\n\n<p>The Modern Business template by Start Bootstrap includes:</p>\n\n<ul><li><strong>Bootstrap v4</strong></li>\n	<li>jQuery</li>\n	<li>Font Awesome</li>\n	<li>Working contact form with validation</li>\n	<li>Unstyled page elements for easy customization</li>\n</ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>\n</div>\n\n<div class=\"col-lg-6\"><img alt=\"\" class=\"img-fluid rounded\" src=\"http://placehold.it/700x450\" /></div>\n</div>\n\n\n<hr /><div class=\"row mb-4\">\n<div class=\"col-md-8\">\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>\n</div>\n\n<div class=\"col-md-4\"><a class=\"btn btn-lg btn-secondary btn-block\" href=\"#\">Call to Action</a></div>\n</div>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1001', '<h2>About Modern Business</h2>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, magni, aperiam vitae illum voluptatum aut sequi impedit non velit ab ea pariatur sint quidem corporis eveniet. Odit, temporibus reprehenderit dolorum!</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et, consequuntur, modi mollitia corporis ipsa voluptate corrupti eum ratione ex ea praesentium quibusdam? Aut, in eum facere corrupti necessitatibus perspiciatis quis?</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<p>The page you\'re looking for could not be found. Here are some helpful links to get you back on track:</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1034', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1035', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1036', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1040', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1041', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1042', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1015', '<p>P: (123) 456-7890</p>\n\n<p>E: <a href=\"mailto:name@example.com\">name@example.com </a></p>\n\n<p>H: Monday - Friday: 9:00 AM to 5:00 PM</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1023', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1046', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1050', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1051', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1052', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1053', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1054', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1055', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1056', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1057', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1058', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1059', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1060', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1061', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1062', '<h3>Project Description</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>\n\n<h3>Project Details</h3>\n\n<ul><li>Lorem Ipsum</li>\n	<li>Dolor Sit Amet</li>\n	<li>Consectetur</li>\n	<li>Adipiscing Elit</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1027', '<p>Most of Start Bootstrap\'s unstyled templates can be directly integrated into the Modern Business template. You can view all of our unstyled templates on our website at <a href=\"http://startbootstrap.com/template-categories/unstyled\">http://startbootstrap.com/template-categories/unstyled</a>.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1028', '<h2>Section Heading</h2>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, et temporibus, facere perferendis veniam beatae non debitis, numquam blanditiis necessitatibus vel mollitia dolorum laudantium, voluptate dolores iure maxime ducimus fugit.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1066', '<p>1) Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1067', '<p>2) Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1068', '<p>3) Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1072', '<p>This is a description for the first slide.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1073', '<p>This is a description for the second slide.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1074', '<p>This is a description for the third slide.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1076', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1077', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1078', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>');

DROP TABLE IF EXISTS `field_card`;
CREATE TABLE `field_card` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_card` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1076,1077,1078', '3', '1075');
INSERT INTO `field_card` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1014', '1040,1041,1042', '3', '1039');

DROP TABLE IF EXISTS `field_card_footer`;
CREATE TABLE `field_card_footer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_card_footer` (`pages_id`, `data`) VALUES('1040', '<a href=\"#\" class=\"btn btn-primary\">Learn More</a>');
INSERT INTO `field_card_footer` (`pages_id`, `data`) VALUES('1041', '<a href=\"#\" class=\"btn btn-primary\">Learn More</a>');
INSERT INTO `field_card_footer` (`pages_id`, `data`) VALUES('1042', '<a href=\"#\" class=\"btn btn-primary\">Learn More</a>');
INSERT INTO `field_card_footer` (`pages_id`, `data`) VALUES('1076', '<a href=\"#\" class=\"btn btn-primary\">Learn More</a>');
INSERT INTO `field_card_footer` (`pages_id`, `data`) VALUES('1077', '<a href=\"#\" class=\"btn btn-primary\">Learn More</a>');
INSERT INTO `field_card_footer` (`pages_id`, `data`) VALUES('1078', '<a href=\"#\" class=\"btn btn-primary\">Learn More</a>');

DROP TABLE IF EXISTS `field_carousel`;
CREATE TABLE `field_carousel` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_carousel` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1072,1073,1074', '3', '1071');

DROP TABLE IF EXISTS `field_city`;
CREATE TABLE `field_city` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_city` (`pages_id`, `data`) VALUES('1015', 'Beverly Hills');

DROP TABLE IF EXISTS `field_country`;
CREATE TABLE `field_country` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_customers`;
CREATE TABLE `field_customers` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_customers` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '500x300.png', '0', '', '2017-12-11 16:57:56', '2017-12-11 16:57:56');
INSERT INTO `field_customers` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '500x300-1.png', '1', '', '2017-12-11 16:57:56', '2017-12-11 16:57:56');
INSERT INTO `field_customers` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '500x300-2.png', '2', '', '2017-12-11 16:57:56', '2017-12-11 16:57:56');
INSERT INTO `field_customers` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '500x300-3.png', '3', '', '2017-12-11 16:57:56', '2017-12-11 16:57:56');
INSERT INTO `field_customers` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '500x300-4.png', '4', '', '2017-12-11 16:57:56', '2017-12-11 16:57:56');
INSERT INTO `field_customers` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '500x300-5.png', '5', '', '2017-12-11 16:57:56', '2017-12-11 16:57:56');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_faq`;
CREATE TABLE `field_faq` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_faq` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1029', '1066,1067,1068', '3', '1065');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Welcome to Modern Business');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1021', 'Portfolio 3');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1034', 'Position');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1035', 'Position');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1036', 'Position');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1023', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1046', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1050', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1051', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1052', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1053', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1054', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1055', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1056', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1057', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1058', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1059', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1060', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1061', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1062', 'Subheading');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1019', 'Portfolio 1');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1020', 'Portfolio 2');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1027', 'Full Width');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1066', 'Collapsible Group Item #1');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1022', 'Portfolio 4');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1067', 'Collapsible Group Item #2');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1068', 'Collapsible Group Item #3');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1072', 'First Slide');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1073', 'Second Slide');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1074', 'Third Slide');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', '750x450.png', '0', '', '2017-12-11 15:05:58', '2017-12-11 15:05:58');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1014', '1200x300.png', '0', '', '2017-12-11 20:26:31', '2017-12-11 20:26:31');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1023', '750x500.png', '0', '', '2017-12-13 20:13:02', '2017-12-13 20:13:02');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1046', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1050', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1051', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1052', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1053', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1054', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1055', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1056', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1057', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1058', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1059', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1060', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1061', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1062', '750x500_730x0.png', '0', '', '2017-12-14 10:51:08', '2017-12-14 10:51:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1072', '1900x1080.png', '0', '', '2017-12-18 09:31:29', '2017-12-18 09:31:29');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1073', '1900x1080.png', '0', '', '2017-12-18 09:31:29', '2017-12-18 09:31:29');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1074', '1900x1080.png', '0', '', '2017-12-18 09:31:29', '2017-12-18 09:31:29');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1047', '167');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1028', '<p><a class=\"list-group-item\" href=\"index.html\">Home</a> <a class=\"list-group-item\" href=\"about.html\">About</a> <a class=\"list-group-item\" href=\"services.html\">Services</a> <a class=\"list-group-item\" href=\"contact.html\">Contact</a> <a class=\"list-group-item\" href=\"portfolio-1-col.html\">1 Column Portfolio</a> <a class=\"list-group-item\" href=\"portfolio-2-col.html\">2 Column Portfolio</a> <a class=\"list-group-item\" href=\"portfolio-3-col.html\">3 Column Portfolio</a> <a class=\"list-group-item\" href=\"portfolio-4-col.html\">4 Column Portfolio</a> <a class=\"list-group-item\" href=\"portfolio-item.html\">Single Portfolio Item</a> <a class=\"list-group-item\" href=\"blog-home-1.html\">Blog Home 1</a> <a class=\"list-group-item\" href=\"blog-home-2.html\">Blog Home 2</a> <a class=\"list-group-item\" href=\"blog-post.html\">Blog Post</a> <a class=\"list-group-item\" href=\"full-width.html\">Full Width Page</a> <a class=\"list-group-item active\" href=\"sidebar.html\">Sidebar Page</a> <a class=\"list-group-item\" href=\"faq.html\">FAQ</a> <a class=\"list-group-item\" href=\"404.html\">404</a> <a class=\"list-group-item\" href=\"pricing.html\">Pricing Table</a></p>');

DROP TABLE IF EXISTS `field_state`;
CREATE TABLE `field_state` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_subheading`;
CREATE TABLE `field_subheading` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1001', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1014', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1015', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1019', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1020', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1021', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1022', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1005', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1027', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1028', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('1029', 'Subheading');
INSERT INTO `field_subheading` (`pages_id`, `data`) VALUES('27', 'Page Not Found');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ');

DROP TABLE IF EXISTS `field_team`;
CREATE TABLE `field_team` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_team` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1001', '1034,1035,1036', '3', '1033');

DROP TABLE IF EXISTS `field_team_image`;
CREATE TABLE `field_team_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_team_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1034', '750x450.png', '0', '', '2017-12-11 07:32:38', '2017-12-11 07:32:38');
INSERT INTO `field_team_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1035', '750x450.png', '0', '', '2017-12-11 07:32:38', '2017-12-11 07:32:38');
INSERT INTO `field_team_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1036', '750x450.png', '0', '', '2017-12-11 07:32:38', '2017-12-11 07:32:38');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1001', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Services');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1005', 'Site Map');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Other pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', '1 Column Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', '2 Column Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', '3 Column Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', '4 Column Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Single Portfolio Item');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Blog Home 1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Blog Home 2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Blog post');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Full Width Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Sidebar Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'FAQ');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Pricing Table');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'team');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'about');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Team Member');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Team Member');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Team Member');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'Card');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'services');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Card Title');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Card Title');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Card Title');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'Project One');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Project Two');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'Project Three');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Project Four');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Project Five');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'Project Six');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1055', 'Project Seven');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Project Eight');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'Project Nine');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Project Ten');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1059', 'Project Eleven');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Project Twelve');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1061', 'Project Thirteen');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Project Fourteen');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'faq');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1065', 'faq');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1070', 'carousel');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1071', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'Card Title');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1077', 'Card title');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1078', 'Card title');

DROP TABLE IF EXISTS `field_zipcode`;
CREATE TABLE `field_zipcode` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_zipcode` (`pages_id`, `data`) VALUES('1015', 'CA 90210');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', '404');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'about');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'repeater_team');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'services');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_Card');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'portfolio-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'portfolio-1-col');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'portfolio-2-col');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'portfolio-3-col');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'portfolio-4-col');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'sidebar');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'repeater_faq');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'faq');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'repeater_carousel');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '115', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '97', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '103', '2', '{\"label\":\"Footer\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '108', '8', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '109', '9', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '107', '7', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '106', '6', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '44', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '101', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '76', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '92', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '114', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '78', '0', '{\"description\":\"The frequently asked question\",\"label\":\"Question\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '76', '1', '{\"description\":\"The answer to a frequently asked question.\",\"label\":\"Answer\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '76', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '44', '0', '{\"label\":\"Image\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":0,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"collapsed\":0,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"clone_field\":\"customers\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":0,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"minlength\":0,\"showCount\":0,\"clone_field\":\"subheading\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeImage', 'team_image', '0', 'Our Team image', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":1,\"descriptionRows\":1,\"fileSchema\":2,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"collapsed\":0,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeImage', 'customers', '0', 'Our Customers', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"collapsed\":0,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeRepeater', 'team', '0', 'Our Team', '{\"template_id\":45,\"parent_id\":1032,\"repeaterFields\":[97,1,78,76,92],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"accordionMode\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeRepeater', 'card', '0', '', '{\"template_id\":47,\"parent_id\":1038,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterFields\":[1,76,103]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'card_footer', '0', '', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'address_1', '0', 'Address', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'address_2', '0', 'Address', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeText', 'city', '0', 'City', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeText', 'zipcode', '0', 'ZIP/Postal code', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeText', 'country', '0', 'Country', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'state', '0', 'State/Province', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeText', 'subheading', '0', 'Subheading', '{\"description\":\"Use this instead as an additional headline, straight after the title.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeRepeater', 'faq', '0', 'FAQ', '{\"description\":\"A frequently Asked Questions item, with a question and an answer.\",\"template_id\":55,\"parent_id\":1064,\"repeaterFields\":[78,76],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"rememberOpen\":1,\"accordionMode\":1,\"collapsed\":0,\"repeaterAddLabel\":\"Add new FAQ item\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeRepeater', 'carousel', '0', 'Carousel', '{\"description\":\"The carousel is a slideshow for cycling through a series of content, built with CSS 3D transforms and a bit of JavaScript. It works with a series of images, text, or custom markup. It also includes support for previous\\/next controls and indicators.\",\"template_id\":57,\"parent_id\":1070,\"repeaterFields\":[44,78,76],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"accordionMode\":1,\"collapsed\":0}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.62\"}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2017-12-06 10:35:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2017-12-06 10:36:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessLogger', '1', '', '2017-12-06 10:36:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'InputfieldIcon', '0', '', '2017-12-06 10:36:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1031}', '2017-12-11 07:29:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldRepeater', '0', '', '2017-12-11 07:29:42');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1081 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2017-12-18 12:06:10', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2017-12-19 08:15:01', '40', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2017-12-06 10:36:22', '40', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2017-12-06 10:36:35', '40', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2017-12-06 10:36:30', '40', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1018', '43', 'http404', '1035', '2017-12-17 11:43:39', '41', '2017-12-06 10:35:50', '3', '2017-12-06 10:35:50', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'webmaster', '1', '2017-12-19 08:15:01', '40', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '41', '2017-12-06 10:35:50', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1000', '1018', '26', 'search', '1025', '2017-12-06 14:11:18', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1001', '1', '44', 'about', '1', '2017-12-21 09:30:42', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '1', '48', 'contact', '1', '2017-12-17 09:58:12', '41', '2017-12-06 13:29:18', '41', '2017-12-06 13:29:20', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1005', '1018', '34', 'site-map', '1', '2017-12-17 10:04:47', '41', '2017-12-06 10:35:50', '2', '2017-12-06 10:35:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2017-12-06 10:35:50', '40', '2017-12-06 10:35:50', '40', '2017-12-06 10:35:50', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2017-12-06 10:35:50', '40', '2017-12-06 10:35:50', '40', '2017-12-06 10:35:50', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2017-12-06 10:36:11', '40', '2017-12-06 10:36:11', '40', '2017-12-06 10:36:11', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2017-12-06 10:36:11', '40', '2017-12-06 10:36:11', '40', '2017-12-06 10:36:11', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'logs', '1', '2017-12-06 10:36:20', '40', '2017-12-06 10:36:20', '40', '2017-12-06 10:36:20', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '31', '5', 'logs-view', '1', '2017-12-06 10:36:20', '40', '2017-12-06 10:36:20', '40', '2017-12-06 10:36:20', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-edit', '1', '2017-12-06 10:36:20', '40', '2017-12-06 10:36:20', '40', '2017-12-06 10:36:20', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '29', 'portfolio', '1', '2017-12-14 10:53:03', '41', '2017-12-06 13:29:39', '41', '2017-12-06 13:29:41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '1', '46', 'services', '1', '2017-12-17 09:57:11', '41', '2017-12-06 13:29:04', '41', '2017-12-06 13:29:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '29', 'blog', '1', '2017-12-06 13:31:11', '41', '2017-12-06 13:30:23', '41', '2017-12-06 13:30:31', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '29', 'other-pages', '1', '2017-12-06 14:11:18', '41', '2017-12-06 13:30:37', '41', '2017-12-06 13:30:40', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1016', '50', 'portfolio-1-col', '1', '2017-12-17 09:59:41', '41', '2017-12-06 14:05:06', '41', '2017-12-06 14:05:09', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1016', '51', 'portfolio-2-col', '1', '2017-12-17 10:01:40', '41', '2017-12-06 14:05:28', '41', '2017-12-06 14:05:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1016', '52', 'portfolio-3-col', '1', '2017-12-17 10:02:29', '41', '2017-12-06 14:05:50', '41', '2017-12-06 14:05:52', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1016', '53', 'portfolio-4-col', '1', '2017-12-17 10:03:19', '41', '2017-12-06 14:06:18', '41', '2017-12-06 14:06:20', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1016', '49', 'portfolio-item', '1', '2017-12-13 20:31:00', '41', '2017-12-06 14:06:47', '41', '2017-12-06 14:06:55', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1017', '29', 'blog-home-1', '1', '2017-12-06 14:07:42', '41', '2017-12-06 14:07:40', '41', '2017-12-06 14:07:42', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1017', '29', 'blog-home-2', '1', '2017-12-06 14:07:54', '41', '2017-12-06 14:07:52', '41', '2017-12-06 14:07:54', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1017', '29', 'blog-post', '1', '2017-12-06 14:08:24', '41', '2017-12-06 14:08:06', '41', '2017-12-06 14:08:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1018', '29', 'full-width', '1', '2017-12-17 10:05:44', '41', '2017-12-06 14:08:48', '41', '2017-12-06 14:09:05', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1018', '54', 'sidebar', '1', '2017-12-17 10:06:22', '41', '2017-12-06 14:09:15', '41', '2017-12-06 14:09:16', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1018', '56', 'faq', '1', '2017-12-17 11:38:37', '41', '2017-12-06 14:10:21', '41', '2017-12-06 14:10:22', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1018', '29', 'pricing', '1', '2017-12-06 14:11:00', '41', '2017-12-06 14:10:53', '41', '2017-12-06 14:11:00', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '2', '2', 'repeaters', '1036', '2017-12-11 07:29:42', '41', '2017-12-11 07:29:42', '41', '2017-12-11 07:29:42', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1031', '2', 'for-field-101', '17', '2017-12-11 07:30:01', '41', '2017-12-11 07:30:01', '41', '2017-12-11 07:30:01', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1032', '2', 'for-page-1001', '17', '2017-12-11 07:31:48', '41', '2017-12-11 07:31:48', '41', '2017-12-11 07:31:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1033', '45', '1512977512-1357-1', '1', '2017-12-21 09:30:42', '41', '2017-12-11 07:31:52', '41', '2017-12-11 07:32:38', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1033', '45', '1512978724-0748-1c', '1', '2017-12-21 09:30:42', '41', '2017-12-11 07:52:04', '41', '2017-12-11 07:52:11', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1033', '45', '1512978742-6543-1c', '1', '2017-12-21 09:30:42', '41', '2017-12-11 07:52:22', '41', '2017-12-11 07:52:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1031', '2', 'for-field-102', '17', '2017-12-11 20:00:32', '41', '2017-12-11 20:00:32', '41', '2017-12-11 20:00:32', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1038', '2', 'for-page-1014', '17', '2017-12-11 20:04:25', '41', '2017-12-11 20:04:25', '41', '2017-12-11 20:04:25', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1039', '47', '1513022681-7156-1', '1', '2017-12-11 20:05:46', '41', '2017-12-11 20:04:41', '41', '2017-12-11 20:05:18', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1039', '47', '1513022733-4376-1c', '1', '2017-12-11 20:06:18', '41', '2017-12-11 20:05:33', '41', '2017-12-11 20:05:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1039', '47', '1513022768-6864-1c', '1', '2017-12-11 20:26:31', '41', '2017-12-11 20:06:08', '41', '2017-12-11 20:06:18', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1016', '49', 'project-one', '1', '2017-12-15 12:39:16', '41', '2017-12-14 10:50:16', '41', '2017-12-14 10:51:08', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '7', '2', '1047.3.10_clone', '9216', '2017-12-15 13:26:07', '41', '2017-12-14 10:51:26', '41', '2017-12-14 10:51:26', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1016', '49', 'project-two', '1', '2017-12-15 12:39:24', '41', '2017-12-14 10:51:39', '41', '2017-12-14 10:51:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1016', '49', 'project-three', '1', '2017-12-15 12:39:36', '41', '2017-12-14 10:51:56', '41', '2017-12-14 10:52:10', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1016', '49', 'project-four', '1', '2017-12-14 10:53:49', '41', '2017-12-14 10:53:38', '41', '2017-12-14 10:53:49', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1016', '49', 'project-five', '1', '2017-12-14 10:54:20', '41', '2017-12-14 10:54:06', '41', '2017-12-14 10:54:20', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1016', '49', 'project-six', '1', '2017-12-14 10:54:37', '41', '2017-12-14 10:54:27', '41', '2017-12-14 10:54:37', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1055', '1016', '49', 'project-seven', '1', '2017-12-14 10:54:53', '41', '2017-12-14 10:54:43', '41', '2017-12-14 10:54:53', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '1016', '49', 'project-eight', '1', '2017-12-14 10:55:12', '41', '2017-12-14 10:55:01', '41', '2017-12-14 10:55:12', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1016', '49', 'project-nine', '1', '2017-12-14 10:55:29', '41', '2017-12-14 10:55:17', '41', '2017-12-14 10:55:29', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1016', '49', 'project-ten', '1', '2017-12-14 10:55:47', '41', '2017-12-14 10:55:36', '41', '2017-12-14 10:55:47', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1016', '49', 'project-eleven', '1', '2017-12-14 10:56:14', '41', '2017-12-14 10:56:02', '41', '2017-12-14 10:56:14', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1060', '1016', '49', 'project-twelve', '1', '2017-12-14 11:00:05', '41', '2017-12-14 10:56:27', '41', '2017-12-14 11:00:05', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1061', '1016', '49', 'project-thirteen', '1', '2017-12-14 11:00:35', '41', '2017-12-14 11:00:12', '41', '2017-12-14 11:00:35', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1062', '1016', '49', 'project-fourteen', '1', '2017-12-14 11:01:12', '41', '2017-12-14 11:00:46', '41', '2017-12-14 11:01:12', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1064', '1031', '2', 'for-field-114', '17', '2017-12-17 10:24:05', '41', '2017-12-17 10:24:05', '41', '2017-12-17 10:24:05', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1065', '1064', '2', 'for-page-1029', '17', '2017-12-17 10:28:17', '41', '2017-12-17 10:28:17', '41', '2017-12-17 10:28:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1065', '55', '1513506623-4983-1', '1', '2017-12-17 11:38:37', '41', '2017-12-17 10:30:23', '41', '2017-12-17 10:35:07', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1067', '1065', '55', '1513506864-8507-1', '1', '2017-12-17 11:38:37', '41', '2017-12-17 10:34:24', '41', '2017-12-17 10:35:07', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1068', '1065', '55', '1513506881-724-1', '1', '2017-12-17 11:38:37', '41', '2017-12-17 10:34:41', '41', '2017-12-17 10:35:07', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1070', '1031', '2', 'for-field-115', '17', '2017-12-18 09:27:41', '41', '2017-12-18 09:27:41', '41', '2017-12-18 09:27:41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1071', '1070', '2', 'for-page-1', '17', '2017-12-18 09:29:03', '41', '2017-12-18 09:29:03', '41', '2017-12-18 09:29:03', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1072', '1071', '57', '1513589346-1681-1', '1', '2017-12-18 11:51:43', '41', '2017-12-18 09:29:06', '41', '2017-12-18 09:31:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1073', '1071', '57', '1513589445-1108-1', '1', '2017-12-18 11:51:43', '41', '2017-12-18 09:30:45', '41', '2017-12-18 09:31:29', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1071', '57', '1513589468-1774-1', '1', '2017-12-18 11:51:43', '41', '2017-12-18 09:31:08', '41', '2017-12-18 09:31:29', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1075', '1038', '2', 'for-page-1', '17', '2017-12-18 11:49:13', '41', '2017-12-18 11:49:13', '41', '2017-12-18 11:49:13', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1076', '1075', '47', '1513597851-5231-1', '1', '2017-12-18 11:53:10', '41', '2017-12-18 11:50:51', '41', '2017-12-18 11:51:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1077', '1075', '47', '1513597953-6987-1', '1', '2017-12-18 12:03:02', '41', '2017-12-18 11:52:33', '41', '2017-12-18 11:53:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1078', '1075', '47', '1513597973-8288-1', '1', '2017-12-18 12:03:02', '41', '2017-12-18 11:52:53', '41', '2017-12-18 11:53:10', '2');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2017-12-06 10:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2017-12-06 10:36:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2017-12-06 10:36:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2017-12-06 10:36:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2017-12-06 13:29:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '1', '2017-12-06 13:29:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2017-12-06 13:29:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2017-12-06 13:30:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2017-12-06 13:30:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1005', '1', '2017-12-06 13:32:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1000', '1', '2017-12-06 13:33:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2017-12-06 13:33:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '1', '2017-12-06 14:05:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '1', '2017-12-06 14:05:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '1', '2017-12-06 14:05:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '1', '2017-12-06 14:06:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2017-12-06 14:06:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2017-12-06 14:07:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '1', '2017-12-06 14:07:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '1', '2017-12-06 14:08:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2017-12-06 14:08:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2017-12-06 14:09:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2017-12-06 14:10:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2017-12-06 14:10:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1001', '1', '2017-12-11 07:14:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '2', '2017-12-11 07:31:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '2', '2017-12-11 07:52:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '2', '2017-12-11 07:52:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2017-12-11 20:04:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '2', '2017-12-11 20:05:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '2', '2017-12-11 20:06:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '1', '2017-12-14 10:50:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '1', '2017-12-14 10:51:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '1', '2017-12-14 10:51:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '1', '2017-12-14 10:53:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2017-12-14 10:54:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2017-12-14 10:54:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '1', '2017-12-14 10:54:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2017-12-14 10:55:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2017-12-14 10:55:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '1', '2017-12-14 10:55:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '1', '2017-12-14 10:56:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '1', '2017-12-14 10:56:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1061', '1', '2017-12-14 11:00:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1062', '1', '2017-12-14 11:00:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1066', '2', '2017-12-17 10:30:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1067', '2', '2017-12-17 10:34:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1068', '2', '2017-12-17 10:34:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1072', '2', '2017-12-18 09:29:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1073', '2', '2017-12-18 09:30:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '2', '2017-12-18 09:31:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1076', '2', '2017-12-18 11:50:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1077', '2', '2017-12-18 11:52:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1078', '2', '2017-12-18 11:52:53');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1031', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '1032');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1039', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1039', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1039', '1038');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1064', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1064', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1065', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1065', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1065', '1064');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1070', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1070', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1071', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1071', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1071', '1070');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1075', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1075', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1075', '1038');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1512553905,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1513598537,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513342810,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1512553905,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"modified\":1513505064,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', '404', '97', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513104112,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'about', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513104412,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'repeater_team', '99', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1512977401}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'services', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513104498,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_Card', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1513022432}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'contact', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513179643,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'portfolio-item', '103', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513339910,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'portfolio-1-col', '104', '0', '0', '{\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1513504836,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'portfolio-2-col', '105', '0', '0', '{\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1513339849,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'portfolio-3-col', '106', '0', '0', '{\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1513340206,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'portfolio-4-col', '107', '0', '0', '{\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1513340412,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'sidebar', '108', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513439156,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'repeater_faq', '109', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1513506245}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'faq', '110', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1513589546,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'repeater_carousel', '111', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1513589261}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":31,"numCreateTables":38,"numInserts":708,"numSeconds":0}