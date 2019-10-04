<?php 
get_header(); 
$category = get_the_category();
$id_category = $category[0]->term_id;
?>	
<div id="wrap">
	<div class="g_content">
    <?php if('adv' == get_post_type()){ ?>
      <?php  include(BASE_URL.'/single-adv.php'); ?>
    <?php } else { ?>
             <?php  include(BASE_URL.'/single.php'); ?>
    <?php } ?>
  </div>
</div>

<?php get_footer(); ?>
