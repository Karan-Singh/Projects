/*-------------------------------------------------------------------- 
Scripts for creating and manipulating custom menus based on standard <ul> markup
Version: 3.0, 03.31.2009

By: Maggie Costello Wachs (maggie@filamentgroup.com) and Scott Jehl (scott@filamentgroup.com)
    http://www.filamentgroup.com
    * reference articles: http://www.filamentgroup.com/lab/jquery_ipod_style_drilldown_menu/
        
Copyright (c) 2009 Filament Group
Dual licensed under the MIT (filamentgroup.com/examples/mit-license.txt) and GPL (filamentgroup.com/examples/gpl-license.txt) licenses.
--------------------------------------------------------------------*/



(function($) {
    $.widget("ui.menu", {
        _init: function() {
            var self = this;
            
            var size = "";
            var maxLength = "";
            var comboName = "";
            var comboTitle = "";
            if (this.options.comboSize !== undefined) {
                size = "size=\""+this.options.comboSize+"\"";
            }
            if (this.options.comboMaxLength !== undefined) {
                maxLength = "maxLength=\""+this.options.comboMaxLength+"\"";
            }
            if (this.options.comboboxName !== undefined && this.options.comboboxName !== "") {
                comboName = "name=\""+this.options.comboboxName+"\"";
            }
            if (this.options.comboboxTitle !== undefined && this.options.comboboxTitle !== "") {
                comboTitle = "title=\""+this.options.comboboxTitle+"\"";
            }
            
            // Add DropDown Button
            this.element.append("<a "+comboTitle+" id=\""+this.element.attr('id')+"_comboButton\" style=\"z-index: 999;\" class=\"fg-button fg-button-icon ui-widget ui-widget-content ui-state-default ui-corner-all\"><span class=\"ui-icon\"></span></a>");
            this.button = $("#"+this.element.attr('id')+"_comboButton");
            this.button.bind("click", function(e) {
                self.showMenu();
                e.stopPropagation();
            });
            this.button.hover(
                function(){ $(this).removeClass('ui-state-default').addClass('ui-state-focus'); },
                function(){ $(this).removeClass('ui-state-focus').addClass('ui-state-default'); }
            );
            
            switch(this.options.iconDirection) {
                case "up": this.button.children("span.ui-icon").addClass("ui-icon-triangle-1-n");
                    break;
                case "down": this.button.children("span.ui-icon").addClass("ui-icon-triangle-1-s");
                    break;
                case "left": this.button.children("span.ui-icon").addClass("ui-icon-triangle-1-w");
                    break;
                case "right": this.button.children("span.ui-icon").addClass("ui-icon-triangle-1-e");
                    break;
                default: this.button.children("span.ui-icon").addClass("ui-icon-triangle-1-s");
            }
            // Create Combobox
            if (this.options.combobox) {
                this.button.parent().prepend("<input "+comboName+" "+comboTitle+" value=\""+this.options.comboStartValue+"\" "+size+" "+maxLength+" id=\""+this.element.attr('id')+"_comboBox\" type=\"text\" class=\"ui-widget-content ui-corner-left fg-menu-combo "+this.options.comboboxClass+"\" style=\"text-align:"+this.options.comboAlign+"\"/>");
                this.combobox = $("#"+this.element.attr('id')+"_comboBox");
                this.combobox.css({
                    width: self.options.comboWidth-12,
                    "float": "left"
                });
                this.button.removeClass("ui-corner-all");
                this.button.css({
                    width: "14px"
                });
                this.button.addClass("ui-corner-right");
                this.options.offsetX = -(this.options.comboWidth-5);
                this.combobox.bind("change",function(e) {
                    var item = $(this);
                    self.comboChange(item);
                    e.stopPropagation();
                });
                
            }
        },
        
        createMenu: function() {
            var o = this.options 
            var self = this;
            var tmpList = o.content;
            if (o.contentType === "json") {
                tmpList = $("<div><ul></ul></div>");
                jQuery.each(o.content, function(index, value) {
                    tmpList.find("ul").append("<li style=\"text-align:"+o.comboAlign+"\" name=\""+value[1]+"\" alt=\"" + value[0] + "\"><a href=\"#\">" + value[1] + "</a></li>");
                });
                tmpList = tmpList.html();
            } else if (o.contentType === "selector") {
                tmpList = $(tmpList).html();
            }
            this.menu = $('<div class="fg-menu-container ui-widget ui-widget-content ui-corner-all eongdropdownstyles">'+tmpList+'</div>');
            this.menu.css({ "min-width": o.dropdownWidth+"px", "white-space": "pre" }).appendTo('body').find('ul:first').not('.fg-menu-breadcrumb').addClass('fg-menu');
            this.menu.find('ul, li a').addClass('ui-corner-all');
            
            this.menu.find('ul').attr('role', 'menu').eq(0).attr('aria-activedescendant','active-menuitem').attr('aria-labelledby', this.button.attr('id'));
            this.menu.find('li').attr('role', 'menuitem');
            this.menu.find('li:has(ul)').attr('aria-haspopup', 'true').find('ul').attr('aria-expanded', 'false');
            this.menu.find('a').attr('tabindex', '-1');
            
            this.menu.find('a').click(function(){
                var item = $(this).parent();
                self.choose(item);
            });
            if (this.menu.height() > o.maxHeight) { 
                this.menu.addClass('fg-menu-scroll');
                this.menu.css({ height: o.maxHeight }); 
            }
            
                
            
            if (o.linkHover) {
                var allLinks = this.menu.find('.fg-menu li a');
                allLinks.hover(
                    function(){
                        var menuitem = $(this);
                        $('.'+o.linkHover).removeClass(o.linkHover).blur().parent().removeAttr('id');
                        $(this).addClass(o.linkHover).focus().parent().attr('id','active-menuitem');
                    },
                    function(){
                        $(this).removeClass(o.linkHover).blur().parent().removeAttr('id');
                    }
                );
            }
            
            this.setPosition();
        },
        
        close: function() {
            var o = this.options;
            var self = this;
            this.button
                .removeClass('fg-menu-open')
                .removeClass(o.callerOnState);
            // Remove 
            this.menu.parent().remove();
            $(document).unbind("click",self.closeAll);
            $(document).unbind('keydown');
            this.onClose();
            for (var i=0; i < $.ui.menu.manager.length; i++) {
                if ($.ui.menu.manager[i] == this) {
                    $.ui.menu.manager.splice(i,1);
                };
            };
        },
        
        closeAll: function() {
            for (var i=0; i < $.ui.menu.manager.length; i++) {
                $.ui.menu.manager[i].close();
            };
        },
        
        choose: function(item) {
            this.close();
            this.options.onSelect.call(item);
            if (this.options.combobox) {
                $("#"+this.element.attr('id')+"_comboBox").attr("alt",$(item).attr("alt"));
                $("#"+this.element.attr('id')+"_comboBox").val($(item).children("a").html());
            }
        },
        
        comboChange: function(item) {
            this.options.onComboChange.call(item);
        },
        
        onShow: function() {
            this.options.onShowDropDown.call();
        },
        
        onClose: function() {
            this.options.onCloseDropDown.call();
        },
        
        showMenu: function() {
            this.closeAll();
            var o = this.options; 
            var self = this;
            this.onShow();
            this.createMenu();
            
            // Select item currently displayed in combobox
            if (o.combobox) {
                var selectedItem = this.combobox.attr("alt");
                $('.' + o.linkHover).removeClass("ui-state-active").blur().parent().removeAttr('id');
                if (selectedItem !== undefined && selectedItem !== "") {
                    
                    this.menu.find("li[alt='" + selectedItem + "'] a").addClass("ui-state-active").parent().attr('id', 'active-menuitem');
                } else {
                    // Try to find it according to the value of the combobox
                    selectedItem = this.combobox.attr("value");
                    this.menu.find("li[name='" + selectedItem + "'] a").addClass("ui-state-active").parent().attr('id', 'active-menuitem');
                }
                var scrollPosition = this.menu.find(".ui-state-active");
                if (scrollPosition.length > 0) {
                    jQuery(this.menu).scrollTo(scrollPosition);
                }
            }
            
            $(document).click(self.closeAll);
            $(document).keydown(function(event){
                var e;
                var self = this;
                if (event.which !="") { e = event.which; }
                else if (event.charCode != "") { e = event.charCode; }
                else if (event.keyCode != "") { e = event.keyCode; }
                
                switch(e) {
                    case 38: // up arrow 
                        if ($(event.target).is('.' + options.linkHover)) {  
                            var prevLink = $(event.target).parent().prev().find('a:eq(0)');
                            if (prevLink.size() > 0) {
                                $(event.target).trigger('mouseout');
                                prevLink.trigger('mouseover');
                            };
                        }
                        else { container.find('a:eq(0)').trigger('mouseover'); }
                        return false;
                        break;
                    case 40: // down arrow 
                        if ($(event.target).is('.' + options.linkHover)) {
                            var nextLink = $(event.target).parent().next().find('a:eq(0)');
                            if (nextLink.size() > 0) {
                                $(event.target).trigger('mouseout');
                                nextLink.trigger('mouseover');
                            };
                        }
                        else { container.find('a:eq(0)').trigger('mouseover'); }
                        return false;
                        break;
                        
                    case 27: // escape
                        self.closeAll();
                        break;
                        
                    case 13: // enter
                        $(event.target).trigger('click');
                        break;
                    };          
            });
            
            
            this.button
                .addClass('fg-menu-open')
                .addClass(o.callerOnState);
                
            $.ui.menu.manager.push(this);
        },
        
        setContent: function(json) {
            if (this.options.type === "json") {
                this.options.content = json;
            }
        },
        
        setPosition: function() { 
            var o = this.options;
            var el = $(this.menu);
            var referrer = this.button;
            var dims = {
                refX: referrer.offset().left,
                refY: referrer.offset().top,
                refW: referrer.getTotalWidth(),
                refH: referrer.getTotalHeight()
            };    
            var o = o;
            var xVal, yVal;
            
            var helper = $("<div id=\""+this.element.attr('id')+"_Helper\" class=\"positionHelper\"></div>");
            helper.css({ position: 'absolute', left: dims.refX, top: dims.refY, width: dims.refW, height: dims.refH });
            el.wrap(helper);
            
            // get X pos
            switch(o.posX) {
                case 'left':     xVal = 0; 
                    break;                
                case 'center': xVal = dims.refW / 2;
                    break;                
                case 'right': xVal = dims.refW;
                    break;
            };
            
            // get Y pos
            switch(o.posY) {
                case 'top':     yVal = 0;
                    break;                
                case 'center': yVal = dims.refH / 2;
                    break;                
                case 'bottom': yVal = dims.refH;
                    break;
            };
            
            // add the offsets (zero by default)
            xVal += o.offsetX;
            yVal += o.offsetY;
            
            // position the object vertically
            if (o.directionV == 'up') {
                el.css({ top: 'auto', bottom: yVal });
                if (o.detectV && !fitVertical(el)) {
                    el.css({ bottom: 'auto', top: yVal });
                }
            } 
            else {
                el.css({ bottom: 'auto', top: yVal });
                if (o.detectV && !fitVertical(el)) {
                    el.css({ top: 'auto', bottom: yVal });
                }
            };
            
            // and horizontally
            if (o.directionH == 'left') {
                el.css({ left: 'auto', right: xVal });
                if (o.detectH && !fitHorizontal(el)) {
                    el.css({ right: 'auto', left: xVal });
                }
            } 
            else {
                el.css({ right: 'auto', left: xVal });
                if (o.detectH && !fitHorizontal(el)) {
                    el.css({ left: 'auto', right: xVal });
                }
            };
            
            // if specified, clone the referring element and position it so that it appears on top of the menu
            if (o.linkToFront) {
                referrer.clone().addClass('linkClone').css({
                    position: 'absolute', 
                    top: 0, 
                    right: 'auto', 
                    bottom: 'auto', 
                    left: 0, 
                    width: referrer.width(), 
                    height: referrer.height()
                }).insertAfter(el);
            };
        }
        
    });
    
    
    $.extend($.ui.menu, {
        manager: [],
        defaults: {
            content: null,
            contentType: "element",
            dropdownWidth: 180, // width of menu container, must be set or passed in to calculate widths of child menus
            maxHeight: 180, // max height of menu (if a drilldown: height does not include breadcrumb)
            
            posX: 'left', 
            posY: 'bottom',
            offsetX: 0,
            offsetY: 0,
            directionH: 'right',
            directionV: 'down',
            iconDirection: 'down', 
            detectH: true, // do horizontal collision detection  
            detectV: true, // do vertical collision detection
            linkToFront: false,

            showSpeed: 100, // show/hide speed in milliseconds
            callerOnState: 'ui-state-active', // class to change the appearance of the link/button when the menu is showing
            linkHover: 'ui-state-hover', // class for menu option hover state
            linkHoverSecondary: 'li-hover', // alternate class, may be used for multi-level menus
            combobox: false,
            comboWidth: 180, // In Px
            comboSize: undefined,
            comboMaxLength: undefined,
            comboStartValue: "",
            comboAlign: "left",
            comboboxClass: "",
            comboboxName: "",
            comboboxTitle: "",
            onSelect: function() {},
            onComboChange: function() {},
            onShowDropDown: function() {},
            onCloseDropDown: function() {}
        }
    });
    /* Utilities to sort and find viewport dimensions */
    
    function sortBigToSmall(a, b) { return b - a; };
    
    jQuery.fn.getTotalWidth = function(){
        return $(this).width() + parseInt($(this).css('paddingRight')) + parseInt($(this).css('paddingLeft')) + parseInt($(this).css('borderRightWidth')) + parseInt($(this).css('borderLeftWidth'));
    };
    
    jQuery.fn.getTotalHeight = function(){
        return $(this).height() + parseInt($(this).css('paddingTop')) + parseInt($(this).css('paddingBottom')) + parseInt($(this).css('borderTopWidth')) + parseInt($(this).css('borderBottomWidth'));
    };
    
    function getScrollTop(){
        return self.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
    };
    
    function getScrollLeft(){
        return self.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft;
    };
    
    function getWindowHeight(){
        var de = document.documentElement;
        return self.innerHeight || (de && de.clientHeight) || document.body.clientHeight;
    };
    
    function getWindowWidth(){
        var de = document.documentElement;
        return self.innerWidth || (de && de.clientWidth) || document.body.clientWidth;
    };
    
    /* Utilities to test whether an element will fit in the viewport
        Parameters:
        el = element to position, required
        leftOffset / topOffset = optional parameter if the offset cannot be calculated (i.e., if the object is in the DOM but is set to display: 'none') */
        
    function fitHorizontal(el, leftOffset){
        var leftVal = parseInt(leftOffset) || $(el).offset().left;
        return (leftVal + $(el).width() <= getWindowWidth() + getScrollLeft() && leftVal - getScrollLeft() >= 0);
    };
    
    function fitVertical(el, topOffset){
        var topVal = parseInt(topOffset) || $(el).offset().top;
        return (topVal + $(el).height() <= getWindowHeight() + getScrollTop() && topVal - getScrollTop() >= 0);
    };

})(jQuery);