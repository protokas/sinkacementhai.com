(function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
        if (
            location.pathname.replace(/^\//, "") ==
            this.pathname.replace(/^\//, "") &&
            location.hostname == this.hostname
        ) {
            var target = $(this.hash);
            target = target.length ?
                target :
                $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate({
                        scrollTop: target.offset().top - 70,
                    },
                    1000,
                    "easeInOutExpo"
                );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#mainNav",
        offset: 100,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
        if ($("#mainNav").offset().top > 100) {
            $("#mainNav").addClass("navbar-shrink");
        } else {
            $("#mainNav").removeClass("navbar-shrink");
        }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);
})(jQuery); // End of use strict

$(document).ready(function () {
    $("#myModal").modal('show');
});


(function () {

    //////////////////////
    // Utils
    //////////////////////
    function throttle(fn, delay, scope) {
        // Default delay
        delay = delay || 250;
        var last, defer;
        return function () {
            var context = scope || this,
                now = +new Date(),
                args = arguments;
            if (last && now < last + delay) {
                clearTimeout(defer);
                defer = setTimeout(function () {
                    last = now;
                    fn.apply(context, args);
                }, delay);
            } else {
                last = now;
                fn.apply(context, args);
            }
        }
    }

    function extend(destination, source) {
        for (var k in source) {
            if (source.hasOwnProperty(k)) {
                destination[k] = source[k];
            }
        }
        return destination;
    }

    //////////////////////
    // END Utils
    //////////////////////

    //////////////////////
    // Scroll Module
    //////////////////////

    var ScrollManager = (function () {

        var defaults = {

                steps: null,
                navigationContainer: null,
                links: null,
                scrollToTopBtn: null,

                navigationElementClass: '.Quick-navigation',
                currentStepClass: 'current',
                smoothScrollEnabled: true,
                stepsCheckEnabled: true,

                // Callbacks
                onScroll: null,

                onStepChange: function (step) {
                    var self = this;
                    var relativeLink = [].filter.call(options.links, function (link) {
                        link.classList.remove(self.currentStepClass);
                        return link.hash === '#' + step.id;
                    });
                    relativeLink[0].classList.add(self.currentStepClass);
                },

                // Provide a default scroll animation
                smoothScrollAnimation: function (target) {
                    $('html, body').animate({
                        scrollTop: target
                    }, 'slow');
                }
            },

            options = {};

        // Privates
        var _animation = null,
            currentStep = null,
            throttledGetScrollPosition = null;

        return {

            scrollPosition: 0,

            init: function (opts) {

                options = extend(defaults, opts);

                if (options.steps === null) {
                    console.warn('Smooth scrolling require some sections or steps to scroll to :)');
                    return false;
                }

                // Allow to customize the animation engine ( jQuery / GSAP / velocity / ... )
                _animation = function (target) {
                    target = typeof target === 'number' ? target : $(target).offset().top;
                    return options.smoothScrollAnimation(target);
                };

                // Activate smooth scrolling
                if (options.smoothScrollEnabled) this.smoothScroll();

                // Scroll to top handling
                if (options.scrollToTopBtn) {
                    options.scrollToTopBtn.addEventListener('click', function () {
                        options.smoothScrollAnimation(0);
                    });
                }

                // Throttle for performances gain
                throttledGetScrollPosition = throttle(this.getScrollPosition).bind(this);
                window.addEventListener('scroll', throttledGetScrollPosition);
                window.addEventListener('resize', throttledGetScrollPosition);

                this.getScrollPosition();
            },

            getScrollPosition: function () {
                this.scrollPosition = window.pageYOffset || window.scrollY;
                if (options.stepsCheckEnabled) this.checkActiveStep();
                if (typeof options.onScroll === 'function') options.onScroll(this.scrollPosition);
            },

            scrollPercentage: function () {
                var body = document.body,
                    html = document.documentElement,
                    documentHeight = Math.max(body.scrollHeight, body.offsetHeight,
                        html.clientHeight, html.scrollHeight, html.offsetHeight);

                var percentage = Math.round(this.scrollPosition / (documentHeight - window.innerHeight) * 100);
                if (percentage < 0) percentage = 0;
                if (percentage > 100) percentage = 100;
                return percentage;
            },

            doSmoothScroll: function (e) {
                if (e.target.nodeName === 'A') {
                    e.preventDefault();
                    if (location.pathname.replace(/^\//, '') === e.target.pathname.replace(/^\//, '') && location.hostname === e.target.hostname) {
                        var targetStep = document.querySelector(e.target.hash);
                        targetStep ? _animation(targetStep) : console.warn('Hi! You should give an animation callback function to the Scroller module! :)');
                    }
                }
            },

            smoothScroll: function () {
                if (options.navigationContainer !== null) options.navigationContainer.addEventListener('click', this.doSmoothScroll);
            },

            checkActiveStep: function () {
                var scrollPosition = this.scrollPosition;

                [].forEach.call(options.steps, function (step) {
                    var bBox = step.getBoundingClientRect(),
                        position = step.offsetTop,
                        height = position + bBox.height;

                    if (scrollPosition >= position && scrollPosition < height && currentStep !== step) {
                        currentStep = step;
                        step.classList.add(self.currentStepClass);
                        if (typeof options.onStepChange === 'function') options.onStepChange(step);
                    }
                    step.classList.remove(options.currentStepClass);
                });
            },

            destroy: function () {
                window.removeEventListener('scroll', throttledGetScrollPosition);
                window.removeEventListener('resize', throttledGetScrollPosition);
                options.navigationContainer.removeEventListener('click', this.doSmoothScroll);
            }
        }
    })();
    //////////////////////
    // END scroll Module
    //////////////////////

})();

////////////////////////////////////////////// hots

const selectHotspot = (e) => {
    const clickedHotspot = e.target.parentElement;
    const container = clickedHotspot.parentElement;
    
    // only include hotspots within same image to allow one open hotspot per image; change "container" to "document" to allow only one open hotspot for entire page:
    const hotspots = container.querySelectorAll(".lg-hotspot"); 
    hotspots.forEach(hotspot => {
      if (hotspot === clickedHotspot) {
        hotspot.classList.toggle("lg-hotspot--selected");
      } else {
        hotspot.classList.remove("lg-hotspot--selected");
      }
    });
  }
  
  (() => {
    const buttons = document.querySelectorAll(".lg-hotspot__button");
    buttons.forEach(button => {
      button.addEventListener("click", selectHotspot);
    });
  })();

  /////////////////////////////////////////////////////////////