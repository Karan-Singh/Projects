<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter5.aspx.cs" Inherits="JQueryLearning.Chapter5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="flatland.css" rel="stylesheet" type="text/css" />
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {

            $('<a href="http://www.google.com">Google</a>').prependTo('body');

            //var $obj1 = $('div.chapter a[@href*=wikipedia]');
            //$('div.chapter a[@href*=wikipedia]').each(function(index) {

            $('div.chapter a').each(function(index) {
                var $thislink = $(this);

                $thislink.attr({
                    'rel': 'external',
                    'id': 'wiklink-' + index,
                    'title': 'learn more about ' + $thislink.text() + ' at wikipedia'
                });
            });


            //$('<a href="http://www.google.com">Google</a>').insertAfter('div chapter p');

        });
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="f-title">Flatland: A Romance of Many Dimensions</h1>
        
        <div id="f-author">by Edwin A. Abbott</div>
        <h2>Part 1, Section 3</h2>
        <h3 id="f-subtitle">Concerning the Inhabitants of Flatland</h3>
        <div id="excerpt">an excerpt</div>
        
        <div class="chapter">
            <p class="square">Our Professional Men and Gentlemen are Squares
            (to which class I myself belong) and Five-Sided Figures or <a href="http://en.wikipedia.org/wiki/Pentagon">Pentagons</a>.
            </p>
            <p class="nobility hexagon">Next above these come the Nobility, of
            whom there are several degrees, beginning at Six-Sided Figures,
            or <a href="http://en.wikipedia.org/wiki/Hexagon">Hexagons</a>,
            and from thence rising in the number of their sides till they
            receive the honourable title of <a href="http://en.wikipedia.org/wiki/Polygon">Polygonal</a>, or many-Sided. Finally when the
            number of the sides becomes so numerous, and the sides themselves
            so small, that the figure cannot be distinguished from a <a href="http://en.wikipedia.org/wiki/Circle">circle</a>, he is
            included in the Circular or Priestly order; and this is the
            highest class of all.
            </p>
            <p><span class="pull-quote">It is a <span class="drop">Law of
            Nature</span> with us that a male child shall have <strong>one
            more side</strong> than his father</span>, so that each
            generation shall rise (as a rule) one step in the scale of
            development and nobility. Thus the son of a Square is a Pentagon;
            the son of a Pentagon, a Hexagon; and so on.
            </p>
        </div>
        
    </form>
</body>
</html>
