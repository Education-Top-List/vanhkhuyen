<?php 
get_header(); 
$category = get_the_category();
$id_category = $category[0]->term_id;
?>	
<div id="wrap">
	<div class="g_content <?php if($id_category==9 || $id_category==10 || $id_category==11 || $id_category==12){ echo 'location_template'; }?>">
		
		<div class="container">

			<?php
			if($id_category!=9 && $id_category!=10 && $id_category!=11 && $id_category!=12){
				?>
				<div id="breadcrumb" class="breadcrumb">
					<ul>
						<?php  echo the_breadcrumb(); ?>
					</ul>
				</div> 
			<?php }?>
			<div class="row">
				<?php 
				wpb_set_post_views(get_the_ID());
				if(have_posts()) :
					while(have_posts()) : the_post(); ?>
						

							<article class="content_single_post">
								
								<div class="text_content">
									<?php  the_content(); ?>
								</div>
								
							</article>
		
						
			
						
						<?php endwhile;
					else:
					endif;
					wp_reset_postdata();
					?>
				</div>

			</div>

		</div>
	</div>

	<?php get_footer(); ?>
