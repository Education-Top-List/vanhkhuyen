<?php

/*
	
@package sunsettheme
	
	========================
		THEME CUSTOM POST TYPES
	========================
*/

	add_action( 'init', 'tg_contact_custom_post_type_adv' );
	add_filter('manage_adv_posts_columns','sunset_set_contact_columns_adv');
	add_action('manage_adv_posts_custom_column','sunset_contact_custom_column_adv',10,2);

/* ADV */
function tg_contact_custom_post_type_adv() {
	$labels = array(
		'name' 				=> 'Slide Index Area ', 
		'singular_name' 	=> 'Thêm ảnh slide mới',
		'menu_name'			=> 'Slide Index', // Name of category of top menu in admin and in sidebar left admin
		'name_admin_bar'	=> 'Slide Index Category '
	);
	
	$args = array(
		'labels'			=> $labels,
		'show_in_nav_menus ' => false,
		'show_ui'			=> true, 
		'show_in_menu'		=> true, // in sidebar left admin
		'capability_type'	=> 'post',
		'has_archive' => true,
		'hierarchical'		=> false,
		'menu_position'		=> 25,
		'menu_icon'			=> 'dashicons-images-alt2',
		'public' => true, // required to display permalink under title post
		'query_var' => true,
		'publicly_queryable' => true, // permalink
		'supports'			=> array( 'title', 'thumbnail' , 'excerpt' , 'editor' , 'page-attributes' )
	);

	register_taxonomy(
		'slide_index',
		'adv',
		array(
			'label' => false, // label in menu admin sidebar left
			'hierarchical' => true
		)
	);

	register_post_type( 'adv', $args );
	
}

function sunset_set_contact_columns_adv($columns){
	$newColumns = array();
	$newColums['title'] = 'Title';
	$newColums['avatar'] = 'Avatar';
	return $newColums;
}

function sunset_contact_custom_column_adv($column,$post_id){
	switch ($column) {
		case 'avatar':
			echo get_the_post_thumbnail();
		break;
	}
}


/* homepicture */
	add_action( 'init', 'tg_contact_custom_post_type_homepicture' );
	add_filter('manage_homepicture_posts_columns','sunset_set_contact_columns_homepicture');
	add_action('manage_homepicture_posts_custom_column','sunset_contact_custom_column_homepicture',10,2);

function tg_contact_custom_post_type_homepicture() {
	$labels = array(
		'name' 				=> 'Ảnh gia đình', 
		'singular_name' 	=> 'Thêm ảnh mới',
		'menu_name'			=> 'Ảnh Gia Đình', // Name of category of top menu in admin and in sidebar left admin
		'name_admin_bar'	=> 'Slide Ảnh Gia Đình '
	);
	
	$arg = array(
		'labels'			=> $labels,
		'show_in_nav_menus ' => false,
		'show_ui'			=> true, 
		'show_in_menu'		=> true, // in sidebar left admin
		'capability_type'	=> 'post',
		'has_archive' => true,
		'hierarchical'		=> false,
		'menu_position'		=> 25,
		'menu_icon'			=> 'dashicons-images-alt2',
		'public' => true, // required to display permalink under title post
		'query_var' => true,
		'publicly_queryable' => true, // permalink
		'supports'			=> array( 'title', 'thumbnail' , 'excerpt' )
	);

	register_taxonomy(
		'home_picture',
		'homepicture',
		array(
			'label' => false, // label in menu admin sidebar left
			'hierarchical' => true
		)
	);

	register_post_type( 'homepicture', $arg );
	
}

function sunset_set_contact_columns_homepicture($columns){
	$newColumns = array();
	$newColums['title'] = 'Title';
	$newColums['avatar'] = 'Avatar';
	return $newColums;
}

function sunset_contact_custom_column_homepicture($column,$post_id){
	switch ($column) {
		case 'avatar':
			echo get_the_post_thumbnail();
		break;
	}
}
