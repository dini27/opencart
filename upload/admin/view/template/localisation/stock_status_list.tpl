<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="icon-exclamation-sign"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="icon-ok-sign"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="panel">
    <div class="panel-heading">
      <h1 class="panel-title"><i class="icon-list"></i> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $insert; ?>" class="btn"><i class="icon-plus"></i> <?php echo $button_insert; ?></a>
        <button type="submit" form="form-stock-status" class="btn"><i class="icon-trash"></i> <?php echo $button_delete; ?></button>
      </div>
    </div>
    <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-stock-status">
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <td width="1" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
            <td class="text-left"><?php if ($sort == 'name') { ?>
              <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
              <?php } else { ?>
              <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
              <?php } ?></td>
            <td class="text-right"><?php echo $column_action; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($stock_statuses) { ?>
          <?php foreach ($stock_statuses as $stock_status) { ?>
          <tr>
            <td class="text-center"><?php if ($stock_status['selected']) { ?>
              <input type="checkbox" name="selected[]" value="<?php echo $stock_status['stock_status_id']; ?>" checked="checked" />
              <?php } else { ?>
              <input type="checkbox" name="selected[]" value="<?php echo $stock_status['stock_status_id']; ?>" />
              <?php } ?></td>
            <td class="text-left"><?php echo $stock_status['name']; ?></td>
            <td class="text-right"><?php foreach ($stock_status['action'] as $action) { ?>
              [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
              <?php } ?></td>
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="text-center" colspan="3"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </form>
    <div class="row">
      <div class="col-lg-6 text-left"><?php echo $pagination; ?></div>
      <div class="col-lg-6 text-right"><?php echo $results; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>