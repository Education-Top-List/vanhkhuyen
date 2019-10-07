<?php get_header();?>
<?php if(have_posts()):?>
	 <?php while(have_posts()) : the_post(); ?>
	 		<?php $post_type = get_post_type( get_the_ID() );
			echo '<p>' . $post_type . '</p>'; ?>

	 		<?php the_post_thumbnail(); ?>
	 <?php endwhile;?>	
<?php endif; ?>	 
<?php get_footer(); ?>