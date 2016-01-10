function updateCountdown() {
    // 20 is the max message length
    var remaining = 20 - jQuery('.message').val().length;
    jQuery('.countdown').text(remaining + ' characters remaining.');
}
jQuery(document).ready(function($) {
    updateCountdown();
    $('.message').change(updateCountdown);
    $('.message').keyup(updateCountdown);
});