/*globals jQuery, window, Sys */
'use strict';

(function ($, Sys) {
    //function dnnEditBasicSettings() {
    //    $('#dnnEditBasicSettings').dnnPanels();
    //    $('#dnnEditBasicSettings .dnnFormExpandContent a').dnnExpandAll({ expandText: '<%=Localization.GetString("ExpandAll", LocalResourceFile)%>', collapseText: '<%=Localization.GetString("CollapseAll", LocalResourceFile)%>', targetArea: '#dnnEditBasicSettings' });
    //}

    //dnnEditBasicSettings();
    //Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
    //    dnnEditBasicSettings();
    //});

    $(document).ready(function () {

        //CUSTOM MODULE FOR CHECKING EXISTING AN ELEMENS
        jQuery.fn.exists = function () {
            return this.length > 0;
        };

        var $lnkAdd = '<i class="fa fa-plus-circle"></i>',
            $lnkEdit = '<i class="fa fa-pencil"></i>',
            $lnkDelete = '<i class="fa fa-trash-o"></i>',
            $lnkBack = '<i class="fa fa-angle-left"></i>',
            $lnkUp = '<i class="fa fa-angle-up"></i>',
            $lnkHome = '<i class="fa fa-home"></i>',
            $lnkAll = '<i class="fa fa-external-link"></i>',
            $lnkUpload = '<i class="fa fa-upload"></i>',
            $lnkSave = '<i class="fa fa-floppy-o"></i>',
            $lnkCancel = '<i class="fa fa-ban"></i>',
            $lnkInfo = '<i class="fa fa-info-circle"></i>',
            $lnkClose = '<i class="fa fa-close"></i>',
            $lnkWarning = '<i class="fa fa-warning"></i>',
            $lnkLock = '<i class="fa fa-lock"></i>',
            $lnkUnlock = '<i class="fa fa-unlock"></i>',
            $lnkSettings = '<i class="fa fa-cog"></i>',
            $lnkCheck = '<i class="fa fa-check"></i>',
            $lnkImage = '<i class="fa fa-picture-o"></i>',
            $lnkCopy = '<i class="fa fa-clipboard"></i>',
            $lnkKey = '<i class="fa fa-key"></i>',
            $lnkPrev = '<i class="fa fa-angle-left"></i>',
            $lnkNext = '<i class="fa fa-angle-right"></i>',
            $lnkQuoteLeft = '<i class="fa fa-quote-left"></i>',
            $lnkQuoteRight = '<i class="fa fa-quote-right"></i>',
            $lnkStar = '<i class="fa fa-star"></i>',
            $largeIcon = 'fa-lg',
            $2xIcon = 'fa-2x',
            $3xIcon = 'fa-3x',
            $4xIcon = 'fa-4x';

        //PUSHED MIXED UP ICON AND TEXT ONTO ELEMENTS
        $('.JSTestimonials .link-add').prepend($lnkAdd + ' ');
        $('.JSTestimonials .link-edit').prepend($lnkEdit + ' ');
        $('.JSTestimonials .link-delete').prepend($lnkDelete + ' ');
        $('.JSTestimonials .link-back').prepend($lnkBack + ' ');
        $('.JSTestimonials .link-up').prepend($lnkUp + ' ');
        $('.JSTestimonials .link-home').prepend($lnkHome + ' ');
        $('.JSTestimonials .link-all').prepend($lnkAll + ' ');
        $('.JSTestimonials .link-upload').prepend($lnkUpload + ' ');
        $('.JSTestimonials .link-save').prepend($lnkSave + ' ');
        $('.JSTestimonials .link-cancel').prepend($lnkCancel + ' ');
        $('.JSTestimonials .link-info').prepend($lnkInfo + ' ');
        $('.JSTestimonials .link-prev').prepend($lnkPrev + ' ');
        $('.JSTestimonials .link-close').prepend($lnkClose + ' ');
        $('.JSTestimonials .link-warning').prepend($lnkWarning + ' ');
        $('.JSTestimonials .link-lock').prepend($lnkLock + ' ');
        $('.JSTestimonials .link-unlock').prepend($lnkUnlock + ' ');
        $('.JSTestimonials .link-settings').prepend($lnkSettings + ' ');
        $('.JSTestimonials .link-check').prepend($lnkCheck + ' ');
        $('.JSTestimonials .link-image').prepend($lnkImage + ' ');
        $('.JSTestimonials .link-copy').prepend($lnkCopy + ' ');
        $('.JSTestimonials .link-key').prepend($lnkKey + ' ');
        $('.JSTestimonials .link-next').append(' ' + $lnkNext);
        $('.JSTestimonials .link-quote-left').prepend($lnkQuoteLeft + ' ').find('.fa').addClass($largeIcon);
        $('.JSTestimonials .link-quote-right').append(' ' + $lnkQuoteRight).find('.fa').addClass($largeIcon);
        $('.JSTestimonials .link-5-star').prepend(function () {
            var $stars = '';
            for (var i = 0; i < 5; i++) $stars += $lnkStar;
            return $stars + ' ';
        });
        $('.JSTestimonials .link-4-star').prepend(function () {
            var $stars = '';
            for (var i = 0; i < 4; i++) $stars += $lnkStar;
            return $stars + ' ';
        });
        $('.JSTestimonials .link-3-star').prepend(function () {
            var $stars = '';
            for (var i = 0; i < 3; i++) $stars += $lnkStar;
            return $stars + ' ';
        });
        $('.JSTestimonials .link-2-star').prepend(function () {
            var $stars = '';
            for (var i = 0; i < 2; i++) $stars += $lnkStar;
            return $stars + ' ';
        });
        $('.JSTestimonials .link-1-star').prepend(function () {
            var $stars = '';
            for (var i = 0; i < 1; i++) $stars += $lnkStar;
            return $stars + ' ';
        });

        //PUSHED ONLY ICONS ON ELEMTNS
        $('.JSTestimonials .link-add.no-txt').html($lnkAdd);
        $('.JSTestimonials .link-edit.no-txt').html($lnkEdit);
        $('.JSTestimonials .link-delete.no-txt').html($lnkDelete);
        $('.JSTestimonials .link-back.no-txt').html($lnkBack);
        $('.JSTestimonials .link-up.no-txt').html($lnkUp);
        $('.JSTestimonials .link-home.no-txt').html($lnkHome);
        $('.JSTestimonials .link-all.no-txt').html($lnkAll);
        $('.JSTestimonials .link-upload.no-txt').html($lnkUpload);
        $('.JSTestimonials .link-save.no-txt').html($lnkSave);
        $('.JSTestimonials .link-cancel.no-txt').html($lnkCancel);
        $('.JSTestimonials .link-info.no-txt').html($lnkInfo);
        $('.JSTestimonials .link-prev.no-txt').html($lnkPrev);
        $('.JSTestimonials .link-next.no-txt').html($lnkNext);
        $('.JSTestimonials .link-close.no-txt').html($lnkClose);
        $('.JSTestimonials .link-warning.no-txt').html($lnkWarning);
        $('.JSTestimonials .link-lock.no-txt').html($lnkLock);
        $('.JSTestimonials .link-unlock.no-txt').html($lnkUnlock);
        $('.JSTestimonials .link-settings.no-txt').html($lnkSettings);
        $('.JSTestimonials .link-check.no-txt').html($lnkCheck);
        $('.JSTestimonials .link-image.no-txt').html($lnkImage);
        $('.JSTestimonials .link-copy.no-txt').html($lnkCopy);
        $('.JSTestimonials .link-key.no-txt').html($lnkKey);
        $('.JSTestimonials .link-quote-left.no-txt').html($lnkQuoteLeft).find('.fa').addClass($largeIcon);
        $('.JSTestimonials .link-quote-right.no-txt').html($lnkQuoteRight).find('.fa').addClass($largeIcon);
        $('.JSTestimonials .link-5-star.no-txt').html(function () {
            var $stars = '';
            for (var i = 0; i < 5; i++) $stars += $lnkStar;
            return $stars;
        });
        $('.JSTestimonials .link-4-star.no-txt').html(function () {
            var $stars = '';
            for (var i = 0; i < 4; i++) $stars += $lnkStar;
            return $stars;
        });
        $('.JSTestimonials .link-3-star.no-txt').html(function () {
            var $stars = '';
            for (var i = 0; i < 3; i++) $stars += $lnkStar;
            return $stars;
        });
        $('.JSTestimonials .link-2-star.no-txt').html(function () {
            var $stars = '';
            for (var i = 0; i < 2; i++) $stars += $lnkStar;
            return $stars;
        });
        $('.JSTestimonials .link-1-star.no-txt').html(function () {
            var $stars = '';
            for (var i = 0; i < 1; i++) $stars += $lnkStar;
            return $stars;
        });

        $('.JSTestimonials a.dnnFormHelp').html($lnkInfo);

        //BIG ICON ON CLOSE POPUP BUTTON
        $('.JSTestimonials .close-action .fa').addClass('fa-5x');

        //BOOTSTRAP FRAMEWORK
        //$('.JSTestimonials [data-toggle="collapse"]').collapse();

        $('.JSTestimonials [data-toggle="tooltip"]').tooltip({
            placement: 'auto bottom'
        });

        //CUTTING TEXT BY ELLIPSIS PLUGIN
        if ($('.JSTestimonials .rpt-list .ellipsis').exists()) $('.JSTestimonials .rpt-list .ellipsis').ellipsis({
            row: 5,
            onlyFullWords: true
        });
        if ($('.JSTestimonials .rpt-list .ellipsis p').exists()) $('.JSTestimonials .rpt-list .ellipsis p').ellipsis({
            row: 5,
            onlyFullWords: true
        });

        //CUTTING TEXT BY ELLIPSIS PLUGIN
        if ($('.JSTestimonials .rpt-accordion .ellipsis').exists()) $('.JSTestimonials .rpt-accordion .ellipsis').ellipsis({
            row: 1,
            onlyFullWords: true
        });
        if ($('.JSTestimonials .rpt-accordion .ellipsis p').exists()) $('.JSTestimonials .rpt-accordion .ellipsis p').ellipsis({
            row: 1,
            onlyFullWords: true
        });

        //FANCYBOX POPUP IMAGE PLUGIN
        if ($('.JSTestimonials a.link-popup').exists()) $('.JSTestimonials a.link-popup').fancybox({
            padding: 0,
            closeClick: true,
            closeBtn: true,
            openEffect: 'elastic',
            closeEffect: 'elastic',
            helpers: {
                //title: null,
                title: {
                    type: 'over' // 'float', 'inside', 'outside' or 'over'
                },
                //overlay: null,
                overlay: {
                    showEarly: false
                }
            }

        });

        //REMOVING TOOLTIPS FROM ALL DISABLED ELEMENTS
        $('.JSTestimonials [disbled="disabled"], .JSTestimonials .aspNetDisabled, .JSTestimonials .dnnDisabled').tooltip('destroy');

        //AUTO CLOSE POPUP PANEL
        $('.JSTestimonials .popup').each(function () {

            var $this = $(this),
                $timer = 0,
                $total = 4;

            if ($this.is('.auto-close-box')) {

                $this.find('.popup-wrapper').append($('<div>', { 'class': 'progress-bar' }).css('width', '0%'));

                var $interval = setInterval(function () {

                    $timer++; //$timer = ($timer + 1) % 361;

                    $this.find('.progress-bar').css('width', '100%');

                    if ($timer === $total) {
                        clearInterval($interval);
                        $('.JSTestimonials .popup.auto-close-box').remove();
                    }
                    //console.log($timer);
                }, 1000);
            }

            //if ($this.is('.confirm-box')) $('.JSTestimonials .popup.confirm-box').remove();
        });

        //DISPALY/HIDE PANEL DEFINITION
        $('.JSTestimonials .hidder input:checkbox').each(function () {
            var $this = $(this),
                $target = $this.parent().data('target');

            if ($this.is(':checked')) {
                $($target).show();
                $($target + '.reverse').hide();
            } else {
                $($target).hide();
                $($target + '.reverse').show();
            }
        }).bind('change', function () {
            var $this = $(this),
                $target = $this.parent().data('target');

            if ($this.is(':checked')) {
                $($target).show();
                $($target + '.reverse').hide();
            } else {
                $($target).hide();
                $($target + '.reverse').show();
            }
        });

        $('.JSTestimonials .unhidder input:checkbox').each(function () {
            var $this = $(this),
                $target = $this.parent().data('target');

            if ($this.is(':checked')) {
                $($target).hide();
                $($target + '.reverse').show();
            } else {
                $($target).show();
                $($target + '.reverse').hide();
            }
        }).bind('change', function () {
            var $this = $(this),
                $target = $this.parent().data('target');

            if ($this.is(':checked')) {
                $($target).hide();
                $($target + '.reverse').show();
            } else {
                $($target).show();
                $($target + '.reverse').hide();
            }
        });

        $('.JSTestimonials input:file').each(function () {
            var $this = $(this),
                $target = $this.data('target');

            if ($this.val() != '') {
                $($target).show();
                $($target + '.reverse').hide();
            } else {
                $($target).hide();
                $($target + '.reverse').show();
            }
        }).bind('change', function () {
            var $this = $(this),
                $target = $this.data('target');

            if ($this.val() != '') {
                $($target).show();
                $($target + '.reverse').hide();
            } else {
                $($target).hide();
                $($target + '.reverse').show();
            }
        });

        $('.JSTestimonials .check-equal').each(function () {
            if ($(this).val() === $(this).data('equal')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        }).bind('change', function () {
            if ($(this).val() === $(this).data('equal')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        });

        $('.JSTestimonials .check-equal-two-options').each(function () {
            if ($(this).val() === $(this).data('equal') || $(this).val() === $(this).data('equal-two')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        }).bind('change', function () {
            if ($(this).val() === $(this).data('equal') || $(this).val() === $(this).data('equal-two')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        });

        $('.JSTestimonials .uncheck-equal').each(function () {
            if ($(this).val() !== $(this).data('equal')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        }).bind('change', function () {
            if ($(this).val() !== $(this).data('equal')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        });

        $('.JSTestimonials .uncheck-equal-two-options').each(function () {
            if ($(this).val() !== $(this).data('equal') || $(this).val() !== $(this).data('equal-two')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        }).bind('change', function () {
            if ($(this).val() !== $(this).data('equal') || $(this).val() !== $(this).data('equal-two')) $($(this).data('target')).show();else $($(this).data('target')).hide();
        });

        $('.JSTestimonials .hidder-radio-equal input:radio').each(function () {
            if ($(this).is(':checked')) {
                if ($(this).val() === $(this).closest('.hidder-radio-equal').data('equal')) $($(this).closest('.hidder-radio-equal').data('target')).show();else $($(this).closest('.hidder-radio-equal').data('target')).hide();
            }
        }).bind('change', function () {
            if ($(this).is(':checked')) {
                if ($(this).val() === $(this).closest('.hidder-radio-equal').data('equal')) $($(this).closest('.hidder-radio-equal').data('target')).show();else $($(this).closest('.hidder-radio-equal').data('target')).hide();
            }
        });

        $('.JSTestimonials .hidder-radio-option input:radio').each(function () {
            //if ($(this).is(':checked')) $($(this).parent().data('target')).show();
            //else $($(this).parent().data('target')).hide();
            if ($(this).is(':checked')) {
                var $groupedClass = $(this).closest('.hidder-radio-option').data('grouped-class');
                $('.JSTestimonials ' + $groupedClass).hide();
                $($(this).parent().data('target')).show();
            }
        }).bind('change', function () {
            if ($(this).is(':checked')) {
                var $groupedClass = $(this).closest('.hidder-radio-option').data('grouped-class');
                $('.JSTestimonials ' + $groupedClass).hide();
                $($(this).parent().data('target')).show();
            }
        });

        if ($('.JSTestimonials .color-picker').exists()) $('.JSTestimonials .color-picker').colorpicker({
            horizontal: true,
            format: 'rgba',
            //color: '#ededed',
            colorSelectors: {
                'default': '#777777',
                'primary': '#337ab7',
                'success': '#5cb85c',
                'info': '#5bc0de',
                'warning': '#f0ad4e',
                'danger': '#d9534f'
            }
        });

        //SELECT PICKER CUSTOM PLUGIN DEFINITION
        //SINGLE SELECT OPTIONS
        if ($('.JSTestimonials .selectpicker.single-select').exists()) $('.JSTestimonials .selectpicker.single-select').selectpicker({
            actionsBox: false,
            //container: false,
            //countSelectedText:'',
            //dropupAuto: true,
            //header: false,
            //hideDisabled: false,
            //iconBase: 'glyphicon',
            liveSearch: false,
            liveSearchPlaceholder: 'Search',
            maxOptions: 1,
            mobile: false,
            multipleSeparator: ' | ',
            noneSelectedText: 'Select',
            selectedTextFormat: 'values',
            selectOnTab: false,
            showContent: true,
            showIcon: true,
            showSubtext: false,
            showTick: true,
            size: 'auto',
            style: 'btn-primary',
            tickIcon: 'glyphicon-ok',
            title: null,
            width: '50%'
        });

        //MULTI SELECT OPTIONS
        if ($('.JSTestimonials .selectpicker.multi-select').exists()) $('.JSTestimonials .selectpicker.multi-select').selectpicker({
            actionsBox: true,
            //container: false,
            //countSelectedText:'',
            //dropupAuto: true,
            //header: false,
            //hideDisabled: false,
            //iconBase: 'glyphicon',
            liveSearch: false,
            liveSearchPlaceholder: 'Search',
            maxOptions: false,
            mobile: false,
            multipleSeparator: ' | ',
            noneSelectedText: 'Select',
            selectedTextFormat: 'count',
            selectOnTab: false,
            showContent: true,
            showIcon: true,
            showSubtext: false,
            showTick: false,
            size: 6,
            style: 'btn-primary',
            tickIcon: 'glyphicon-ok',
            title: null,
            width: '50%'
        });

        //GET PARTIAL POSTBACK ON UPDATEPANEL REFRESH
        var prm = Sys.WebForms.PageRequestManager.getInstance();

        if (prm != null) {
            prm.add_endRequest(function (sender, e) {
                if (sender._postBackSettings.panelsToUpdate != null) {
                    RefreshPostBack();
                }
            });
        };

        function RefreshPostBack() {
            $('.JSTestimonials .selectpicker.single-select').selectpicker({
                actionsBox: false,
                //container: false,
                //countSelectedText:'',
                //dropupAuto: true,
                //header: false,
                //hideDisabled: false,
                //iconBase: 'glyphicon',
                liveSearch: false,
                liveSearchPlaceholder: 'Search',
                maxOptions: 1,
                mobile: false,
                multipleSeparator: ' | ',
                noneSelectedText: 'Select',
                selectedTextFormat: 'values',
                selectOnTab: false,
                showContent: true,
                showIcon: true,
                showSubtext: false,
                showTick: true,
                size: 'auto',
                style: 'btn-primary',
                tickIcon: 'glyphicon-ok',
                title: null,
                width: '50%'
            });
            $('.JSTestimonials .selectpicker.multi-select').selectpicker({
                actionsBox: true,
                //container: false,
                //countSelectedText:'',
                //dropupAuto: true,
                //header: false,
                //hideDisabled: false,
                //iconBase: 'glyphicon',
                liveSearch: false,
                liveSearchPlaceholder: 'Search',
                maxOptions: false,
                mobile: false,
                multipleSeparator: ' | ',
                noneSelectedText: 'Select',
                selectedTextFormat: 'count',
                selectOnTab: false,
                showContent: true,
                showIcon: true,
                showSubtext: false,
                showTick: false,
                size: 6,
                style: 'btn-primary',
                tickIcon: 'glyphicon-ok',
                title: null,
                width: '50%'
            });

            $('.JSTestimonials .selectpicker').selectpicker('render');

            $('.JSTestimonials a.dnnFormHelp').html($lnkInfo);
        };

        //CHECK TO SEE IF THE WINDOW IS TOP IF NOT THEN DISPLAY BUTTON
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('.JSTestimonials .scroll-action').fadeIn();
                //$('.JSTestimonials .dnnFormSectionHead').animate({ 'top': $('.JSTestimonials .dnnFormSectionHead').height() + 'px' }, 300).addClass('fixed');
            } else {
                    $('.JSTestimonials .scroll-action').fadeOut();
                    //$('.JSTestimonials .dnnFormSectionHead').animate({ 'top': '-=76' }, 300).removeClass('fixed');
                }
        });

        //CLICK EVENT TO SCROLL TO TOP
        $('.JSTestimonials .scroll-action').click(function () {
            $('html, body').animate({ scrollTop: 0 }, 300);
            return false;
        });
    });
})(jQuery, window.Sys);

