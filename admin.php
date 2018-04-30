<?php


include ='modle/modle.php';
include ='modle/view.php';


renderHeader()

if ($_SESSION['roll'] == '1') {
    switch ($GET['action']) {
      case 'edit':
      rederEditpage();
        break;
      case 'add':
      renderEditpage();
        break;
      case 'add':
      renderaddnew();
        break;
      case 'list':
        renderlist();
        break;
      case 'addprocess':
      processadd();
      renderlist();
        break;
      case 'editprocess':
      processedit();
      renderlist();
        break;
      default:
        renderlist();
        break;
  }
}
renderFooter()




 ?>
