<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
<?php echo $agoo_header; ?>
  <div class="page-header-sc">
    <div class="container-fluid">

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>


<div id="content1" style="border: none;">

<div style="clear: both; line-height: 1px; font-size: 1px;"></div>


<?php if ($error_warning) { ?>
    <div class="alert alert-danger warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
<?php } ?>

<?php if ($success) { ?>
    <div class="alert alert-success success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
<?php } ?>


<div class="box1">

<div class="content">

<?php echo $agoo_menu; ?>

<div class="buttons" style="float:right;">
	<a onclick="$('#form').submit();" class="markbuttono asc_blinking nohref"><?php echo $language->get('button_adapter'); ?></a>
  <a onclick="location = '<?php echo $cancel; ?>';" class="markbuttono  nohref"><?php echo $language->get('button_cancel'); ?></a>
</div>

<div style="width: 100%; overflow: hidden; clear: both; height: 1px; line-height: 1px;">&nbsp;</div>


  <div class="box">
   <div class="content">

    	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
          <table class="form">

            <tr>

              <td colspan=2>
							<div class="input-group marginbottom5px">

							<span class="input-group-addon">
							<div>
								<a href="<?php echo $load_template; ?>" class="ajax_action markbuttono nohref"><?php echo $language->get('entry_load_template'); ?></a>
							</div>
							<br>
							<div>
								<a href="<?php echo $load_template_new; ?>" class="ajax_action markbuttono nohref"><?php echo $language->get('entry_load_template_new'); ?></a>
							</div>
							<br>
							<?php echo $language->get('entry_success')."<b>" . $theme . "</b> ...<br>/" . $file_theme; ?>
							</span>
								<textarea class="form-control" id="text_area" name="success_file" rows="25" style="width: 100%;"><?php echo $success_data; ?></textarea>
							</div>

              </td>
            </tr>

            <tr>
              <td colspan="2" style="text-align: center;"><?php echo $language->get('html_help_adapter'); ?></td>
            </tr>


            <tr>
              <td><?php echo $language->get('entry_not_replace'); ?></td>
              <td>
               <div class="checkbox">
               <label><input type="checkbox" name="not_replace"></label>
               </div>
              </td>
            </tr>





          <?php foreach ($replace_code as $num => $r_code) { ?>
            <tr>
              <td>
              <?php echo $language->get('entry_replace_text'); ?>
              </td>
              <td>
               <div class="input-group marginbottom5px" style="width: 100%;">
	               <textarea class="form-control" name="replace_code[<?php echo $num; ?>][in]" style="width: 100%;"><?php echo $r_code['in']; ?></textarea>
	               <?php echo $language->get('entry_replace_text_na'); ?>
	               <textarea class="form-control" name="replace_code[<?php echo $num; ?>][out]" style="width: 100%;"><?php echo $r_code['out'];; ?></textarea>
	               </div>
              </td>
            </tr>
            <?php } ?>




            <tr>
              <td><?php echo $language->get('entry_remove_tag'); ?></td>
              <td>

               <?php
              if (isset($success_tag)) {
              foreach ($success_tag as $num => $tag) {
              if (in_array($tag, $remove_tag[$theme])) {

              ?>
               <input type="checkbox" value="<?php echo $tag; ?>" name="selected_tag[]" checked="checked" >
              <?php
              print_r($tag);
              } else {
              ?>
               <input type="checkbox" value="<?php echo $tag; ?>" name="selected_tag[]">
              <?php
              print_r($tag);
              }
               ?>
              <br>
              <?php
              }
              }
               ?>

              </td>
            </tr>


            <tr>
              <td><?php echo $language->get('entry_remove_id'); ?></td>
              <td>

               <?php
              if (isset($success_id)) {
              foreach ($success_id as $num => $id) {
              if (in_array($id, $remove_id[$theme])) {

              ?>
               <input type="checkbox" value="<?php echo $id; ?>" name="selected_id[]" checked="checked" >
              <?php
              print_r($id);
              } else {
              ?>
               <input type="checkbox" value="<?php echo $id; ?>" name="selected_id[]">
              <?php
              print_r($id);
              }
               ?>
              <br>
              <?php
              }
              }
               ?>

              </td>
            </tr>

            <tr>
              <td><?php echo $language->get('entry_remove_class'); ?></td>
              <td>

               <?php
              if (isset($success_class)) {
              foreach ($success_class as $num => $class) {
              	foreach ($class as $n => $classic) {
              if (in_array($classic, $remove_class[$theme])) {

              ?>
               <input type="checkbox" value="<?php echo $classic; ?>" name="selected_class[<?php echo $classic; ?>][]" checked="checked" >
              <?php
              print_r($classic);
              } else {
              ?>
               <input type="checkbox" value="<?php echo $classic; ?>" name="selected_class[<?php echo $classic; ?>][]">
              <?php
              print_r($classic);
              }
               ?>
              <br>
              <?php
              }
              }
              }
               ?>

              </td>
            </tr>

            <tr>
              <td><?php if (isset($time)) echo $time; ?></td>
              <td>

              </td>
            </tr>


          </table>


   		</form>
    </div>
  </div>
</div>

<script>

$('a.ajax_action').click(function() {
url_action = $(this).attr('href');
this_action = this;
$(this).append('<div id="loading"><\/div>');

 	$.ajax({
					url: url_action,
					type: 'post',
					async: true,
					data: {  num: '1'},
					dataType: 'html',
					beforeSend: function()
					{
                      $(this_action).addClass('loader');
                      $('#text_area').html('');
                       $('#loading').html('<?php echo $language->get('text_loading_adapter'); ?>');
  					},
					success: function(html) {
						if (html) {
                        	$('#text_area').html(html);
                        	$('#file_theme').html('');
                        	$('#loading').remove();
						}
						$(this_action).removeClass('loader');
					}
				});


return false;
});





</script>



</div>
<?php echo $footer; ?>