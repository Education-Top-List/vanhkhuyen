<?php get_header();?>
<?php if(have_posts()):?>
	<div class="archive_masonry">
		
			<div class="grid">
				<div class="grid-sizer"></div>
				<div class="gutter-sizer"></div>
				<?php while(have_posts()) : the_post(); ?>
					<?php $image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full', false, ''  );
						  $height_img_custom = get_post_meta($post->ID,'_dropdown_img_height_event',true);
					 ?>
					<div class="grid-item">
						
						<figure style="background:url('<?php echo $image[0]; ?>');" class="<?php echo $height_img_custom; ?>"  data-image="<?php echo $image[0]; ?>">
							<a href="<?php echo $image[0]; ?>" class="fancybox" data-fancybox="images">
								<?php //the_post_thumbnail(); ?>
							</a>
						</figure>
						
					
					</div>
				<?php endwhile;?>
			</div>	
	</div>

<?php endif; ?>	 
<?php get_footer(); ?>