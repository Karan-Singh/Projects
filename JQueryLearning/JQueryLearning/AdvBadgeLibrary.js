
/*Advanced Badge Designer Library, 2012*/
/*Built with JQuery & Jquery UI*/
        
        (function ($) {
            $.BdgNS = $.BdgNS || { _pDiv: "", _pDivWd: "", _pDivHt: "" };  //New badge NS. _pDiv:- Global var limited to NS for accessing parentDiv element everytime we need.
            $.BdgNS.actions = $.BdgNS.actions || {}; //New sub NS for the badge actions
            
            $.fn.outerHtml = function () {
                if (this.length == 0) return false;
                var elem = this[0], name = elem.tagName.toLowerCase();
                if (elem.outerHTML) return elem.outerHTML;
                var attrs = $.map(elem.attributes, function (i) { return i.name + '="' + i.value + '"'; });
                return "<" + name + (attrs.length > 0 ? " " + attrs.join(" ") : "") + ">" + elem.innerHTML + "</" + name + ">";
            };

            /*
            $.fn.MakeImgDrag = function () { //Not being used anymore..
            return $(this).draggable({ stack: "img, div", cursor: "move", delay: 100, containment: "parent", scroll: false });
            };
            */

            $.fn.MakeImgDragResize = function () {
                $(this).on("click", $.BdgNS.actions.selectAction)
                       .on("dblclick", function () { $(this).resizable({ containment: "parent" /*, resize: function (event, ui) { $.BdgNS._pDiv.find(".dragImgClass").css({'position':'absolute'}); } */ }); })   /*Dbl click img to resize*/
                       .attr("tabindex", "0") /*To make keyboard event work*/
                       .draggable({ stack: "img, div", cursor: "move", delay: 100, containment: "parent", scroll: false /*, stop: function (event, ui) { $(this).css('z-index', ''); } */ });
                return $(this);
            };

            $.fn.MakeDivDragResize = function () {
                $(this).draggable({ stack: "img, div", cursor: "move", delay: 100, containment: "parent", scroll: false })
                        .resizable({ containment: "parent", autoHide: true })
                        .on("dblclick", $.BdgNS.actions.editAction)
                        .on("click", $.BdgNS.actions.selectAction)
                        .on("blur", "textarea", $.BdgNS.actions.blurAction)                        
                        .attr("tabindex", "0"); /*To make keyboard event work*/
                return $(this);
            };

            $.fn.ToggleRound = function () {
                if ($(this).css('border-top-left-radius') == '0px')
                    return $(this).animate({ borderRadius: 15 }, 1000);
                else
                    return $(this).animate({ borderRadius: '' }, 1000);                
            };

            /*Copied from StackOverflow.com*/
            var jQuery_css = $.fn.css,
            gAttr = ['font-family', 'font-size', 'font-weight', 'font-style', 'color', 'text-transform', 'text-decoration', 'letter-spacing', 'word-spacing', 'line-height', 'text-align', 'vertical-align', 'direction', 'background-color', 'background-image', 'background-repeat', 'background-position', 'background-attachment', 'opacity', 'width', 'height', 'top', 'right', 'bottom', 'left', 'margin-top', 'margin-right', 'margin-bottom', 'margin-left', 'padding-top', 'padding-right', 'padding-bottom', 'padding-left', 'border-top-width', 'border-right-width', 'border-bottom-width', 'border-left-width', 'border-top-color', 'border-right-color', 'border-bottom-color', 'border-left-color', 'border-top-style', 'border-right-style', 'border-bottom-style', 'border-left-style', 'position', 'display', 'visibility', 'z-index', 'overflow-x', 'overflow-y', 'white-space', 'clip', 'float', 'clear', 'cursor', 'list-style-image', 'list-style-position', 'list-style-type', 'marker-offset', 'border-bottom-left-radius', 'border-bottom-right-radius', 'border-top-left-radius', 'border-top-right-radius'];
            $.fn.css = function () {
                if (arguments.length && !$.isArray(arguments[0])) return jQuery_css.apply(this, arguments);
                var attr = arguments[0] || gAttr,
                    len = attr.length,
                    obj = {};
                for (var i = 0; i < len; i++) obj[attr[i]] = jQuery_css.call(this, attr[i]);
                return obj;
            }

        })(jQuery);

        //Will be called only from the .aspx page under the DOM ready event.
        function BindElements() {
            $.BdgNS._pDiv = $('#ParentDIV');
            $.BdgNS._pDivHt = $.BdgNS._pDiv.height();
            $.BdgNS._pDivWd = $.BdgNS._pDiv.width();
            $.BdgNS._pDiv.find(".dragImgClass").MakeImgDragResize();
            $.BdgNS._pDiv.find(".dragClass").MakeDivDragResize();

            $.BdgNS._pDiv.on("click", ResetOpacity)
                         .on("click", function () { $.BdgNS.actions.ResetImg($(this).find('.dragImgClass')); })
                         .on("mousemove", CrsrPosition)
                         .on("mouseout", function () { $("#dvPos").html('0, 0'); });
        }

        //Extend the BdgNS.actions NS with the features.
        $.extend($.BdgNS.actions, {
            ResetImg: function (obj) {
                //console.log('method called');
                obj.resizable('destroy');  //Remove resizability           
            }

            , keyAction: function (event) {
                var key = event.keyCode ? event.keyCode : event.which;
                if (key == 46) deleteObj();   //46=Delele key.
            }

            , selectAction: function () {
                ResetOpacity();
                var $this = $(this); //get current obj.            
                //console.log($this.find('p').html());

                if ($this.get(0).tagName == "IMG") {
                    $('body').data('CBO', $this.attr('src'));
                }
                else {
                    $('body').data('CBO', $this.find('p').html());
                }

                $.BdgNS.actions.ResetImg($(".dragImgClass"));

                $('body').data('selObj', $this);    //Add the selected element to the body to be used for actions by the user.        
                $this.fadeTo('slow', 0.3);  //Fade the selected element.
                //$this.css({ 'border': '2px dotted #000'});

                //Make deletion work with the delete key.
                $this.focus();
                $this.on("keypress", $.BdgNS.actions.keyAction);
                $this.on("keydown", $.BdgNS.actions.moveAction);
            }

            , blurAction: function () {
                //Replace textarea with paragraph
                var $txtar = $(this);
                var $p = $('<p/>').html($txtar.val());
                $txtar.replaceWith($p);
                //Should sanitize the content entered by the user [TODO]
            }

            , editAction: function () { //Dynamically add textarea element to make the div editable.
                var $this = $(this); //get current obj.

                // Don't do anything if already editing                
                if ($this.find("textarea").length) return;

                $this.off("keypress", $.BdgNS.actions.keyAction);
                $this.off("keydown", $.BdgNS.actions.moveAction);
                $this.fadeTo('fast', 1.0);

                // Replace paragraph with textarea
                var $p = $this.find("p");
                var $txtar = $('<textarea/>').val($p.html());
                $p.replaceWith($txtar);
                $txtar.focus();
            }

            , gridAction: function (bgC, bgI, rptVal) {
                $.BdgNS._pDiv.css({ 'background-color': bgC, 'background-image': bgI, 'background-repeat': rptVal });
                //[ToDo] :- Add other features by checking ShowHideGrid().
            }

            , moveAction: function (e) {
                var sz = (e.shiftKey ? 10 : 1);
                var cvsPos = $.BdgNS._pDiv.position();

                if (e.keyCode == 37) {         //Left
                    var left = parseInt($(this).css('left'));
                    left = left - sz;
                    //console.log(cvsPos.left); console.log(left);
                    if (left > 0) $(this).css('left', left + 'px');
                    e.preventDefault();
                } else if (e.keyCode == 38) {   //Up                    
                    var top = parseInt($(this).css('top'));
                    top = top - sz;
                    if (top >= 0) $(this).css('top', top + 'px');
                    e.preventDefault();
                } else if (e.keyCode == 39) {   //Right                    
                    var left = parseInt($(this).css('left'));
                    var wd = parseInt($(this).outerWidth());
                    left = left + sz;
                    //console.log($.BdgNS._pDivWd); console.log(left + wd);
                    if ($.BdgNS._pDivWd > (left + wd)) $(this).css('left', left + 'px');    
                    e.preventDefault();
                } else if (e.keyCode == 40) {   //Down                    
                    var top = parseInt($(this).css('top'));
                    var ht = parseInt($(this).outerHeight());
                    top = top + sz;
                    if ($.BdgNS._pDivHt > (top + ht)) $(this).css('top', top + 'px');
                    e.preventDefault();
                }
            }
        });

       
        function copyObj() {
            var cloneTxt = $('body').data('CBO'),
                $selObj = $('body').data('selObj'),
                selObjCSS = $selObj.css(['width', 'height', 'color', 'background-color', 'text-align', 'font-weight', 'border-bottom-left-radius', 'border-bottom-right-radius', 'border-top-left-radius', 'border-top-right-radius']),
                srcTag = $selObj.get(0).tagName;

            if (srcTag == "IMG") {
                $.BdgNS._pDiv.append($("<img class='dragImgClass' style='position:absolute;top:10px;left:10px;' src='" + cloneTxt + "' />").css(selObjCSS).MakeImgDragResize());             
            }
            else
                addTxt(cloneTxt, selObjCSS);
                            
            ResetOpacity();
        }

        function insertImg() {
            var $selObj = $('body').data('selObj');
            if ($selObj == undefined) return;

            if ($selObj.get(0).tagName == "DIV")
                $selObj.find('p').append('<img src="logo1.jpg" />');
        }

        function deleteObj() {
            var $selObj = $('body').data('selObj');
//            if ($selObj == undefined) {
//                alert('Please select the element for the removal !');
//                return;
//            }            
            $selObj.remove();
            $('body').removeData('selObj');
        }

        function resetObj() {
            var $selObj = $('body').data('selObj');
            if ($selObj == undefined) return;

            $selObj.css({ width: '', height: '', backgroundColor: '' }).animate({ borderRadius: '', rotate: '0deg' });
            ResetOpacity();  
        }

        function ResetOpacity() {
            //$(".dragImgClass, .dragClass").fadeTo('fast', 1.0);
            //$(".dragImgClass, .dragClass").css({ 'opacity': '' }); //Get rid of opacity prop set in the selectAction.                        
            $.BdgNS._pDiv.find(".dragImgClass, .dragClass").css({ 'opacity': '' }); //Get rid of opacity prop set in the selectAction.                        
        }

        function CrsrPosition(e) {            
            var x = e.pageX - this.offsetLeft;
            var y = e.pageY - this.offsetTop;
            $("#dvPos").html(x + ', ' + y);
        }

        function addTxt(txtInfo, srcCss) {
            txtInfo = (txtInfo ? txtInfo : "Your text!");
            var newObj = "<div class='dragClass' style='position:absolute;top:10px;left:10px;'><p>" + txtInfo + "</p></div>";
            if (srcCss != null) newObj = $(newObj).css(srcCss);
            $.BdgNS._pDiv.append($(newObj).MakeDivDragResize());
        }

        function addImg() {
            $.BdgNS._pDiv.append($("<img class='dragImgClass' style='position:absolute;top:10px;left:10px;' src='logo2.JPG' />").MakeImgDragResize());
        }

        function applyColor() {
            var $selObj = $('body').data('selObj');            
            if ($selObj == undefined) {
                alert('Please select the element to apply color !');
                return;
            }            
            $selObj.animate({color: $("#DDLColor").val()}, 1000);
            ResetOpacity();            
        }

        function applyBackColor(bCvs) {
            if (bCvs) { //Apply Canvas BackColor
                var cvsVal = $("#DDLCvsBackColor").val();
                if (cvsVal == 0) $.BdgNS._pDiv.css({ 'background-color': '' });
                else $.BdgNS._pDiv.animate({ backgroundColor: cvsVal }, 1000);                
                return;
            }

            var $selObj = $('body').data('selObj');
            if ($selObj == undefined) {
                alert('Please select the element to apply background color !');
                return;
            }
            //$selObj.css('background-color', $("#DDLBackColor").val());
            $selObj.animate({ backgroundColor: $("#DDLBackColor").val() }, 1000);
            ResetOpacity();
        }

        function applyAlignment() {
            var $selObj = $('body').data('selObj');
            if ($selObj == undefined) {
                alert('Please select the element to apply alignment !');
                return;
            }
            $selObj.css('text-align', $("#DDLAlign").val());
            ResetOpacity();
        }

        function applyStyle(){
          var $selObj = $('body').data('selObj');
            if ($selObj == undefined) {
                alert('Please select the element to apply font style !');
                return;
            }
            $selObj.css('fontWeight', $("#DDLFontStyle").val());            
            ResetOpacity();
        }

        function changeSize(bIncSz) {
            var $selObj = $('body').data('selObj');
            if ($selObj == undefined) {
                alert('Please select the element to resize !');
                return;
            }
            var wd = parseInt($selObj.width()), ht = parseInt($selObj.height()),
                csWd = parseInt($.BdgNS._pDiv.width()), csHt = parseInt($.BdgNS._pDiv.height()),
                pos = $selObj.position();

            if (bIncSz) {                
                    wd += parseInt(wd * 0.25);
                    ht += parseInt(ht * 0.25);
                    if ((wd + pos.left) > csWd || (ht + pos.top) > csHt) return;
            }
            else {
                wd -= parseInt(wd * 0.25);
                ht -= parseInt(ht * 0.25);
            }
            
            $selObj.animate({ width: wd, height: ht }, 500);            
            ResetOpacity();
        }

        function chgCvsSize(obj) {
            //console.log($(obj).val());
            var csWd = parseInt($.BdgNS._pDivWd), csHt = parseInt($.BdgNS._pDivHt);            
            var csWdNew, csHtNew;

            if ($(obj).val() == 1) {
                //$.BdgNS._pDiv.css({ 'width': '800px', 'height': '500px' });
                csWdNew = 800; csHtNew = 500;
                $.BdgNS._pDiv.animate({ width: csWdNew, height: csHtNew }, 800);                
            }
            else {
                //$.BdgNS._pDiv.css({ 'width': '400px', 'height': '250px' });
                csWdNew = 400; csHtNew = 250;
                $.BdgNS._pDiv.animate({ width: csWdNew, height: csHtNew }, 800);                
            }            
            
            //When the canvas size is changed to smaller size than the currect one, then move the elements to the top left side of the canvas.            
            if (csWdNew < csWd && csHtNew < csHt) {
                $.BdgNS._pDiv.find('.dragClass, .dragImgClass').animate({left:0, top:0}, 700);
            }
            else if (csWdNew < csWd) {
                $.BdgNS._pDiv.find('.dragClass, .dragImgClass').animate({ left: 0}, 700);
            }
            else if (csHtNew < csHt) {
                $.BdgNS._pDiv.find('.dragClass, .dragImgClass').animate({ top: 0 }, 700);
            }

            $.BdgNS._pDivHt = csHtNew;
            $.BdgNS._pDivWd = csWdNew;
            
            ResetOpacity();
        }

        function shrinkSize(bForAll) {
            if (bForAll) {
                $.BdgNS._pDiv.find(".dragClass, .dragImgClass").css({ display: 'inline-block', width: '', height: '' });
            }
            else {
                var $selObj = $('body').data('selObj');
                $selObj.css({ display: 'inline-block', width: '', height: '' });
                ResetOpacity();
            }
        }

        function setUrl(bRmvUrl) {
            var $selObj = $('body').data('selObj');
            var srcTag = $selObj.get(0).tagName;
            var lnk = '<a href="http://www.yahoo.com" target="_blank">Yahoo!</a>';

            if (srcTag == "DIV")
                $selObj.find('p').append(lnk);
            else if (srcTag == "IMG") {
                if (bRmvUrl) 
                    $selObj.unwrap();                
                else {
                    if ($selObj.parent().get(0).tagName == "A") return; //Skip the repeated anchor tag wrap.              
                    $selObj.wrap('<a href="http://www.yahoo.com" target="_blank" />');
                }
            }

            ResetOpacity();
        }

        function toggleRound(bForAll) {
            if (bForAll) {
                $(".dragClass, .dragImgClass").each(function () {
                    $(this).ToggleRound();                    
                });
            }
            else {
                var $sObj = $('body').data('selObj');
                $sObj.ToggleRound();
                ResetOpacity();                           
            }
        }

        function rotateObj() {
            var $sObj = $('body').data('selObj');
            if ($sObj == undefined) return;

            //$sObj.resizable('destroy');
            $sObj.animate({ rotate: "+=90deg" }, 1000);
            //$sObj.MakeDivDragResize();
            //ResetOpacity();

            //[TODO] :- At runtime during the badge pdf generation, replace the word "-moz-transform" with "-ro-transform" in the badge_html string.
            //http://www.realobjects.com/fileadmin/products/pdfreactor/doc_html/ch06s24.html
        }

        function toggleGrid(obj) {
            if ($(obj).attr('checked'))
                $.BdgNS.actions.gridAction("", "url(BadgeGrid.jpg)", "repeat");                            
            else 
                $.BdgNS.actions.gridAction("", "", "");            
        }

        function clearCanvas() {
            $.BdgNS._pDiv.css({'z-index':''}).html("");
        }

        function toggleCanvas() {            
            if ($.BdgNS._pDiv.css('background-image') != "none")
                $.BdgNS.actions.gridAction("", "", "");
            else
                $.BdgNS.actions.gridAction("", "url(red_official_lores.gif)", "no-repeat");
        }

      

        function getHTML() {
            $('#dvHtml').css({ display: 'inline-block', border: '2px solid red' }).text($.BdgNS._pDiv.outerHtml());
        }

 