<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter3.aspx.cs" Inherits="JQueryLearning.Chapter3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="carol.css" rel="stylesheet" type="text/css" />
    
    <script language="javascript" type="text/javascript">

        $(document).ready(function() {


//            $('#switcher h3').toggle(function() {
//                $('#switcher .button').addClass('hidden');
//            }, function() {
//                $('#switcher .button').removeClass('hidden');
//            });

            $('#switcher .button').hover(function() {
                $(this).addClass('hover');
              }, function() {
                $(this).removeClass('hover');
            });


            $('#switcher .button').bind('click', function() {
                //$('#switcher .button').click(function() {
                $('body').removeClass();

                if (this.id == 'switcher-narrow') {
                    $('body').addClass('narrow');
                }
                else if (this.id == 'switcher-large') {
                    $('body').addClass('large');
                }

                $('#switcher .button').removeClass('selected');
                $(this).addClass('selected');
            });


        });
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">

      <div id="switcher">
        <h3>Style Switcher</h3>
        <div class="button selected" id="switcher-normal">
          Default
        </div>
        <div class="button" id="switcher-narrow">
          Narrow Column
        </div>
        <div class="button" id="switcher-large">
          Large Print
        </div>
      </div>

      <div id="header">
        <h2>A Christmas Carol</h2>
        <h2 class="subtitle">In Prose, Being a Ghost Story of Christmas</h2>
        <div class="author">by Charles Dickens</div>
      </div>
      
      <div class="chapter" id="chapter-preface">
        <h3 class="chapter-title">Preface</h3>
        <p>I HAVE endeavoured in this Ghostly little book, to raise the Ghost of an Idea, which shall not put my readers out of humour with themselves, with each other, with the season, or with me.  May it haunt their houses pleasantly, and no one wish to lay it.</p>
        <p>Their faithful Friend and Servant,</p>
        <p>C. D.</p>
        <p>December, 1843.</p>
      </div>
      
      <div class="chapter" id="chapter-1">
        <h3 class="chapter-title">Stave I: Marley's Ghost</h3>        
        <p>"Nothing!" Scrooge replied.</p>
        <p>"You wish to be anonymous?"</p>      
        <p>Meanwhile the fog and darkness thickened so, that people ran about with flaring links, proffering their services to go before horses in carriages, and conduct them on their way. The ancient tower of a church, whose gruff old bell was always peeping slily down at Scrooge out of a Gothic window in the wall, became invisible, and struck the hours and quarters in the clouds, with tremulous vibrations afterwards as if its teeth were chattering in its frozen head up there. The cold became intense. In the main street, at the corner of the court, some labourers were repairing the gas-pipes, and had lighted a great fire in a brazier, round which a party of ragged men and boys were gathered: warming their hands and winking their eyes before the blaze in rapture. The water-plug being left in solitude, its overflowings sullenly congealed, and turned to misanthropic ice. The brightness of the shops where holly sprigs and berries crackled in the lamp heat of the windows, made pale faces ruddy as they passed. Poulterers' and grocers' trades became a splendid joke: a glorious pageant, with which it was next to impossible to believe that such dull principles as bargain and sale had anything to do. The Lord Mayor, in the stronghold of the mighty Mansion House, gave orders to his fifty cooks and butlers to keep Christmas as a Lord Mayor's household should; and even the little tailor, whom he had fined five shillings on the previous Monday for being drunk and bloodthirsty in the streets, stirred up to-morrow's pudding in his garret, while his lean wife and the baby sallied out to buy the beef.</p>
        <p>Foggier yet, and colder. Piercing, searching, biting cold. If the good Saint Dunstan had but nipped the Evil Spirit's nose with a touch of such weather as that, instead of using his familiar weapons, then indeed he would have roared to lusty purpose. The owner of one scant young nose, gnawed and mumbled by the hungry cold as bones are gnawed by dogs, stooped down at Scrooge's keyhole to regale him with a Christmas carol: but at the first sound of</p>
        <div class="poem">
          <div class="poem-line">"God bless you, merry gentleman!</div>
          <div class="poem-line">May nothing you dismay!"</div>
        </div>
        <p>Scrooge seized the ruler with such energy of action, that the singer fled in terror, leaving the keyhole to the fog and even more congenial frost.</p>
        <p>At length the hour of shutting up the counting-house arrived. With an ill-will Scrooge dismounted from his stool, and tacitly admitted the fact to the expectant clerk in the Tank, who instantly snuffed his candle out, and put on his hat.</p>
        <p>"You'll want all day to-morrow, I suppose?" said Scrooge.</p>
        <p>"If quite convenient, sir."</p>
        <p>"It's not convenient," said Scrooge, "and it's not fair. If I was to stop half-a-crown for it, you'd think yourself ill-used, I'll be bound?"</p>
      </div>
    </div>
    </form>
</body>
</html>