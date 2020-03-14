(function($) {
    var uniqueCntr = 0;
    $.fn.resized = function (waitTime, fn) {
        if (typeof waitTime === "function") {
            fn = waitTime;
            waitTime = 250;
        }
        var tag = "resizeTimer" + uniqueCntr++;
        this.resize(function () {
            var self = $(this);
            var timer = self.data(tag);
            if (timer) {
                clearTimeout(timer);
            }
            timer = setTimeout(function () {
                self.removeData(tag);
                fn.call(self[0]);
            }, waitTime);
            self.data(tag, timer);
        });
    }
})(jQuery);
