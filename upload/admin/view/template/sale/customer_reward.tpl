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
<table class="table table-striped table-bordered table-hover">
  <thead>
    <tr>
      <td class="text-left"><?php echo $column_date_added; ?></td>
      <td class="text-left"><?php echo $column_description; ?></td>
      <td class="text-right"><?php echo $column_points; ?></td>
    </tr>
  </thead>
  <tbody>
    <?php if ($rewards) { ?>
    <?php foreach ($rewards as $reward) { ?>
    <tr>
      <td class="text-left"><?php echo $reward['date_added']; ?></td>
      <td class="text-left"><?php echo $reward['description']; ?></td>
      <td class="text-right"><?php echo $reward['points']; ?></td>
    </tr>
    <?php } ?>
    <tr>
      <td></td>
      <td class="text-right"><b><?php echo $text_balance; ?></b></td>
      <td class="text-right"><?php echo $balance; ?></td>
    </tr>
    <?php } else { ?>
    <tr>
      <td class="text-center" colspan="3"><?php echo $text_no_results; ?></td>
    </tr>
    <?php } ?>
  </tbody>
</table>
<div class="row">
  <div class="col-lg-6 text-left"><?php echo $pagination; ?></div>
  <div class="col-lg-6 text-right"><?php echo $results; ?></div>
</div>
