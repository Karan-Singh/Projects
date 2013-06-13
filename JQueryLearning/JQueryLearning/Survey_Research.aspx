<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Survey_Research.aspx.cs" Inherits="JQueryLearning.Survey_Research" %>

<html>
<head runat="server">
    <title></title>
   <link href="guest.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <!--<div class="QuestionAnswer">
       <table style="border-collapse: collapse; table-layout: fixed;" border="0" cellpadding="0" cellspacing="0" width="98%">
            <tbody>
            <tr>
            <td>
            </td>
            <td class="QMatrixHeader">
            Very Satisfied
            </td>
            <td class="QMatrixHeader">
            Somewhat Satisfied
            </td>
            <td class="QMatrixHeader">
            Neutral
            </td>
            <td class="QMatrixHeader">
            Somewhat Dissatisfied
            </td>
            <td class="QMatrixHeader">
            Very Dissatisfied
            </td>
            </tr>
            <tr class="QListRowAlt">
            <td class="QListRowLabel">
            Friendliness of staff
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices0-473070741_0-1981382468" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 0" value="MtxRadioChoices0-473070741_0-1981382468" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices0-473070741_11275663182" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 0" value="MtxRadioChoices0-473070741_11275663182" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices0-473070741_2490542593" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 0" value="MtxRadioChoices0-473070741_2490542593" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices0-473070741_31265722625" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 0" value="MtxRadioChoices0-473070741_31265722625" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices0-473070741_41017339993" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 0" value="MtxRadioChoices0-473070741_41017339993" type="radio">
            </span>
            </td>
            </tr>
            <tr class="QListRow">
            <td class="QListRowLabel">
            Knowledge of staff
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices171646470_0-1981382468" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 1" value="MtxRadioChoices171646470_0-1981382468" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices171646470_11275663182" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 1" value="MtxRadioChoices171646470_11275663182" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices171646470_2490542593" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 1" value="MtxRadioChoices171646470_2490542593" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices171646470_31265722625" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 1" value="MtxRadioChoices171646470_31265722625" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices171646470_41017339993" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 1" value="MtxRadioChoices171646470_41017339993" type="radio">
            </span>
            </td>
            </tr>
            <tr class="QListRowAlt">
            <td class="QListRowLabel">
            Cost of services
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices2-72086897_0-1981382468" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 2" value="MtxRadioChoices2-72086897_0-1981382468" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices2-72086897_11275663182" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 2" value="MtxRadioChoices2-72086897_11275663182" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices2-72086897_2490542593" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 2" value="MtxRadioChoices2-72086897_2490542593" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices2-72086897_31265722625" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 2" value="MtxRadioChoices2-72086897_31265722625" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices2-72086897_41017339993" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 2" value="MtxRadioChoices2-72086897_41017339993" type="radio">
            </span>
            </td>
            </tr>
            <tr class="QListRow">
            <td class="QListRowLabel">
            Quality of services
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices3225819002_0-1981382468" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 3" value="MtxRadioChoices3225819002_0-1981382468" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices3225819002_11275663182" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 3" value="MtxRadioChoices3225819002_11275663182" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices3225819002_2490542593" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 3" value="MtxRadioChoices3225819002_2490542593" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices3225819002_31265722625" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 3" value="MtxRadioChoices3225819002_31265722625" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices3225819002_41017339993" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 3" value="MtxRadioChoices3225819002_41017339993" type="radio">
            </span>
            </td>
            </tr>
            <tr class="QListRowAlt">
            <td class="QListRowLabel">
            Senior management
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices4134141372_0-1981382468" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 4" value="MtxRadioChoices4134141372_0-1981382468" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices4134141372_11275663182" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 4" value="MtxRadioChoices4134141372_11275663182" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices4134141372_2490542593" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 4" value="MtxRadioChoices4134141372_2490542593" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices4134141372_31265722625" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 4" value="MtxRadioChoices4134141372_31265722625" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices4134141372_41017339993" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 4" value="MtxRadioChoices4134141372_41017339993" type="radio">
            </span>
            </td>
            </tr>
            <tr class="QListRow">
            <td class="QListRowLabel">
            Pricing
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices5-1916937677_0-1981382468" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 5" value="MtxRadioChoices5-1916937677_0-1981382468" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices5-1916937677_11275663182" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 5" value="MtxRadioChoices5-1916937677_11275663182" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices5-1916937677_2490542593" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 5" value="MtxRadioChoices5-1916937677_2490542593" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices5-1916937677_31265722625" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 5" value="MtxRadioChoices5-1916937677_31265722625" type="radio">
            </span>
            </td>
            <td class="QMatrixCell">
            <span class="QRadio">
              <input id="ctl00_ContentPlaceHolder1_ctl04_MtxRadioChoices5-1916937677_41017339993" name="ctl00$ContentPlaceHolder1$ctl04$Matrix Single 5" value="MtxRadioChoices5-1916937677_41017339993" type="radio">
            </span>
            </td>
            </tr>
            </tbody>
            </table>
    </div>-->
    
    <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
		<tbody><tr>
			<td valign="top" class="QuestionText"><span>fav food?</span></td>
		</tr><tr>
			<td><div class="QuestionAnswer">
				<table width="98%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse; table-layout: fixed;">
					<tbody>
					<tr class="QListRow">
						<td class="QListText"><img src="logo1.JPG" /><label style="display:none;" for="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder0">Pork</label>						  
						</td>
						<td class="QListText"><input type="text" class="QTextBox" id="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder0" size="20" maxlength="30" name="ctl00$ContentPlaceHolder1$ctl07$SurveyRankOrder0"></td><td class="QListText"></td>
					</tr><tr class="QListRowAlt">
						<td class="QListText"><img src="logo2.JPG" /><label for="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder1">Beef</label></td><td class="QListText"><input type="text" class="QTextBox" id="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder1" size="20" maxlength="30" name="ctl00$ContentPlaceHolder1$ctl07$SurveyRankOrder1"></td><td class="QListText"></td>
					</tr><tr class="QListRow">
						<td class="QListText"><img src="logo3.JPG" /><label for="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder2">Fish</label></td><td class="QListText"><input type="text" class="QTextBox" id="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder2" size="20" maxlength="30" name="ctl00$ContentPlaceHolder1$ctl07$SurveyRankOrder2"></td><td class="QListText"></td>
					</tr><tr class="QListRowAlt">
						<td class="QListText"><img src="logo4.JPG" /><label for="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder3">Chichen</label></td><td class="QListText"><input type="text" class="QTextBox" id="ctl00_ContentPlaceHolder1_ctl07_SurveyRankOrder3" size="20" maxlength="30" name="ctl00$ContentPlaceHolder1$ctl07$SurveyRankOrder3"></td><td class="QListText"></td>
					</tr><tr class="QListRow">
						<td class="QListText"></td><td colspan="2" class="QListText">Rank 4 choices between 1 and 4.</td>
					</tr>
				</tbody>
			    </table>
			</div></td>
		</tr>
	</tbody></table>
    
    
    </form>
</body>
</html>
