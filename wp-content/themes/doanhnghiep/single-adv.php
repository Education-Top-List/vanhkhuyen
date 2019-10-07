<?php
get_header();
?>	
<div class="single_post_not_masonty">
			<?php $post_type = get_post_type( get_the_ID() );
			echo '<p>' . $post_type . '</p>'; ?>
	<h1>Single Post Type<?php  echo the_title();?></h1>
	<figure><?php the_post_thumbnail(); ?></figure>
</div>
    
<?php
get_footer();
?>