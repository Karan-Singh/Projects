<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter6.aspx.cs" Inherits="JQueryLearning.Chapter6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="dictionary.css" rel="stylesheet" type="text/css" />
    
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {

            $('#letter-a .button').click(function() {
                $('#content').load('index.html');
            });


            $('#letter-b .button').click(function() {
                $.getJSON('b.json', function(data) {

                    $('#content').empty();

                    $.each(data, function(entryIndex, entry) {
                        var html = '<div class="entry">';
                        html += '<h3 class="term">' + entry['term'] + '</h3>';
                        html += '<div class="part">' + entry['part'] + '</div>';
                        html += '<div class="definition">';
                        html += entry['definition'];
                        html += '</div>';
                        html += '</div>';

                        $('#content').append(html);
                    });
                });
            });

            $('#letter-c .button').click(function() {
            
                            $.get('d.xml', function(data) {
                                $('#content').empty();
                                    $(data).find('entry').each(function() {
                                        var $entry = $(this);
                                        var html = '<div class="entry">';
                                        html += '<h3 class="term">' + $entry.attr('term') + '</h3>';
                                        html += '<div class="part">' + $entry.attr('part') + '</div>';
                                        html += '<div class="definition">'
                                        html += $entry.find('definition').text();
                                        
                                        var $quote = $entry.find('quote');
                                        if ($quote.length) {
                                        html += '<div class="quote">';
                            
                                        $quote.find('line').each(function() {
                                                html += '<div class="quote-line">' + $(this).text() + '</ div>';
                                            });
                            
                                        if ($quote.attr('author')) {
                                        html += '<div class="quote-author">' +
                                        $quote.attr('author') + '</div>';
                                            }
                                        html += '</div>';

                                    }
                                        html += '</div>';
                                        html += '</div>';
                                        $('#content').append($(html));
                                    });
                                });
                            });


        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="dictionary">
        <div class="letters">
            <div class="letter" id="letter-a">
            <h3>A</h3>
            <div class="button">Load</div>
            </div>
            <div class="letter" id="letter-b">
            <h3>B</h3>
            <div class="button">Load</div>
            </div>
            <div class="letter" id="letter-c">
            <h3>C</h3>
            <div class="button">Load</div>
            </div>
            <div class="letter" id="letter-d">
            <h3>D</h3>
            <div class="button">Load</div>
            </div>
        </div>
    </div>
    <div id="content"></div>
    
    </form>
</body>
</html>
