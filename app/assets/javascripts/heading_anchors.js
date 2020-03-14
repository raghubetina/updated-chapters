/**
 * jQuery snippet to add anchor links to Markdown posts header
 */

$(function () {
  'use strict';

  /* selector */
  var postHeader = 'h1, h2, h3, h4, h5, h6';

  $(postHeader).filter('[id]').each(function () {
    var header      = $(this),
        headerID    = header.attr('id'),
        anchorClass = 'header-link align-self-center',
        anchorIcon  = '<i class="fa fa-link" aria-hidden="true"></i>';

    if (headerID) {
      header.prepend($('<a />').addClass(anchorClass).attr({ 'href': '#' + headerID, 'aria-hidden': 'true' }).html(anchorIcon));
    }

    return this;
  });
});
