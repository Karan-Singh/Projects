<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Chapter4.aspx.cs" Inherits="JQueryLearning.Chapter3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="gettysburg.css" rel="stylesheet" type="text/css" />
    
    <script language="javascript" type="text/javascript">

        $(document).ready(function() {

            $('#pTask').css('backgroundColor', '#fcf').hide();

            $('#pBrave').css('backgroundColor', '#cff').click(function() {                
                var $thisPara = $(this);
                $thisPara.next().slideDown('slow', function() {
                    $thisPara.slideUp('slow');
                });
            });

            $('div.label').click(function() {
                //$('div.button').animate({ left: 650, height: 38 }, 'slow');
                $('div.button')
                    .fadeTo('slow', 0.5)
                    .animate({ left: 650 }, 'slow')
                    .fadeTo('slow', 1.0, function() {
                        $(this).css('backgroundColor', '#f00');
                    });

                //  .slideUp('slow');
                //   .animate({ height: 38 }, 'slow');
                //  .css('backgroundColor', '#f00');
                //$('div.button').css('backgroundColor', '#f00');

            });

            $('div.button').click(function() {

                var $speech = $('div.speech');
                var currentSize = $speech.css('fontSize');
                var num = parseFloat(currentSize, 10);
                var unit = currentSize.slice(-2);

                if (this.id == 'switcher-large') {
                    num *= 1.5;
                }
                else if (this.id == 'switcher-small') {
                    num /= 1.5;
                }

                $speech.css('fontSize', num + unit);
            });

            //$('p:eq(1)').hide();
            //$('#pMore').hide();
            var $pObj = $('#pMore');
            $pObj.hide();

            $('span.more').click(function() {
                //$('#pMore').show();
                //$pObj.show();
                //$pObj.show(850);  //msec
                //$pObj.show('slow');
                //$pObj.fadeIn('slow');
                $pObj.animate({ height: 'show', width: 'show', opacity: 'show' }, 'slow');

                $(this).hide();
            });
        });
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br />
        
       <div id="switcher">
            <div class="label">Style Switcher</div>
            <div class="button" id="switcher-large">Increase Text Size</div>
            <div class="button" id="switcher-small">Decrease Text size</div>
       </div>
       <div class="speech">
            <p>Fourscore and seven years ago our fathers brought forth on
            this continent a new nation, conceived in liberty, and dedicated
            to the proposition that all men are created equal.
            <span class="more">. . .</span></p>
            <p id="pMore">Now we are engaged in a great civil war, testing whether that
            nation, or any nation so conceived and so dedicated, can long
            endure. We are met on a great battlefield of that war. We have come
            to dedicate a portion of that field as a final resting-place for
            those who here gave their lives that the nation might live. It is
            altogether fitting and proper that we should do this. But, in a
            larger sense, we cannot dedicate, we cannot consecrate, we cannot
            hallow, this ground.</p>
            <p id="pBrave">The brave men, living and dead, who struggled here have
            consecrated it, far above our poor power to add or detract. The
            world will little note, nor long remember, what we say here, but it
            can never forget what they did here. It is for us the living,
            rather, to be dedicated here to the unfinished work which they who
            fought here have thus far so nobly advanced.</p>
            <p id="pTask">It is rather for us to be here dedicated to the great task
            remaining before us&mdash;that from these honored dead we take
            increased devotion to that cause for which they gave the last full
            measure of devotion&mdash;that we here highly resolve that these
            dead shall not have died in vain&mdash;that this nation, under God,
            shall have a new birth of freedom and that government of the
            people, by the people, for the people, shall not perish from the
            earth.</p>
       </div>
  
    </form>
</body>
</html>