<?php 
/*
Template Name: page-template-trangchu
*/
get_header(); 
?>	

 <div class="slider3d first">
  <div class="slider3d__wrapper">
    <div class="slider3d__inner">
      <div class="slider3d__rotater">

                  <?php
$args = array(  
  'post_type' => 'adv',
  'post_status' => 'publish',
  'posts_per_page' => 20, 
  'orderby' => 'title', 
  'order' => 'ASC'
);
$loop_slide = new WP_Query( $args ); 



while ( $loop_slide->have_posts() ) : $loop_slide->the_post(); 
  ?>
   <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
    <div class="slider3d__item"  style="background:url('<?php echo $image[0]; ?>');">
          <h2 class="slider3d__heading" data-text="<?php echo the_title(); ?>"><a href="<?php the_permalink(); ?>"><?php echo the_title(); ?></a> </h2>
        </div>
    <?php
endwhile;
wp_reset_postdata(); 
?>
  
      </div>
    </div>
  </div>
  <div class="slider3d__controls">
    <div class="slider3d__handle">
      <div class="slider3d__handle__inner">
        <div class="slider3d__handle__rotater">
          <div class="slider3d__handle__item active">Page 1</div>
          <div class="slider3d__handle__item">Page 2</div>
          <div class="slider3d__handle__item">Page 3</div>
          <div class="slider3d__handle__item">Page 4</div>
        </div>
      </div>
    </div>
    <div class="slider3d__control m--up"></div>
    <div class="slider3d__control m--down"></div>
  </div>
</div>

<?php get_footer(); ?>
