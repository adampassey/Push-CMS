/**
 *  Used application-wide
 */
jQuery(document).ready(function() {

  //  reports tooltip
  jQuery('.navbar-reports').tooltip();

  //  if notification tabs exist (send notification form)
  if(jQuery('.notification-tabs').length > 0) {

    //  cache the notify tabs
    var notifyTabs = jQuery('.notification-tabs');

    //  handle a click event
    jQuery('a',notifyTabs).click(function(e) {
      jQuery('.optional-notify').hide();
      var showFields = jQuery(this).data('toggle');
      jQuery('.'+showFields).show();
      jQuery('li',notifyTabs).removeClass('active');
      jQuery(this).parent('li').addClass('active');
      e.stopPropagation();
      e.preventDefault();
    });
  } 

});