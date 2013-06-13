<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="helpicon.aspx.cs" Inherits="JQueryLearning.helpicon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        /* Header */
.Logo{}
.Banner{}

/* Global Navigation Bar */
.ActiveBlade
{
	border-style:none;
	text-align:left;
}

/*Event*/
.ActiveBlade .NavGlobal3,.NavProd .NavGlobal3
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color:#a77350;
	text-align: center; 
	border-color: black #FFFFFF black black; 
	line-height: 100%
}
.PassiveBlade .NavGlobal3
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #b0b0b0; 
	text-align: center; 
	border-color: black #FFFFFF black black; 
	line-height: 100%
}

/*Survey*/
.ActiveBlade .NavGlobal4, .NavProd .NavGlobal4
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #41919d; 
	text-align: center; 
	line-height: 100%
}
.PassiveBlade .NavGlobal4
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #b0b0b0; 
	text-align: center; 
	line-height: 100%;
}

/*RFP*/
.ActiveBlade .NavGlobal5, .NavProd .NavGlobal5
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #bb464c; 
	text-align: center; 
	line-height: 100%;
}
.PassiveBlade .NavGlobal5
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF;  
	background-color: #b0b0b0; 
	text-align: center; 
	line-height: 100%;
}

/*eMarketing*/
.ActiveBlade .NavGlobal8, .NavProd .NavGlobal8
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #DE802C; 
	text-align: center; 
	line-height: 100%;
}
.PassiveBlade .NavGlobal8
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF;  
	background-color: #b0b0b0; 
	text-align: center; 
	line-height: 100%;
}

/*Contacts*/
.ActiveBlade .NavGlobal2,.NavProd .NavGlobal2
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #7272b6; 
	text-align: center; 
	line-height: 100%; 
}
.PassiveBlade .NavGlobal2
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #b0b0b0; 
	text-align: center; 
	line-height: 100%; 
}

/*Account*/
.ActiveBlade .NavGlobal1, .NavProd .NavGlobal1
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #3d8d52; 
	text-align: center; 
	line-height: 100%;
}
.PassiveBlade .NavGlobal1
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #b0b0b0; 
	text-align: center; 
	line-height: 100%;
}

/*Supplier*/
.ActiveBlade .NavGlobal6, .NavProd .NavGlobal6 
{ 
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #0f5179; 
	text-align: center; 
	line-height: 100% 
}
.PassiveBlade .NavGlobal6
{ 
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #b0b0b0;
	text-align: center; 
	line-height: 100% 
}

/*Dashboard*/
.ActiveBlade .NavGlobal7, .NavProd .NavGlobal7
{
	text-decoration: none;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 8.5pt;
	font-weight: bold;
	color: #FFFFFF;
	background-color: #eaca47;
	text-align: center;
	line-height: 100%;
}
.PassiveBlade .NavGlobal7
{
	text-decoration: none; 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8.5pt; 
	font-weight: bold; 
	color: #FFFFFF; 
	background-color: #b0b0b0; 
	text-align: center; 
	line-height: 100%;
}

#cvent-footer {
	height: 53px;
}
.footer, .footer td {
	padding: 0;
	font: normal 11px Arial, Helvetica, sans-serif;
}

.footer a {
    text-decoration: underline;
    color: #666;
}

.footer-indent {
	padding-left: 5px;
}
td.product-links {
	font: normal 10px Arial, Helvetica, sans-serif;

}


/* Top Right Information */
.LogOutTxt{color:#FF3300}
.TopRightTxt{color:#364c66}
.ImageOnTopNav
{
	background: url(/a/images/app/topArrow.gif) no-repeat;
	clear: none; 
	display: block;
    visibility: hidden; 
    overflow: hidden; 
    position: relative; 
    top: 2px;
    width:11px;
    height:6px;
    vertical-align: middle; 
    text-align: center;
}

/* Breadcrumb */
.CrumbPlain { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; background-color: #edf0f2; }
.CrumbTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; background-color: #edf0f2; }
.CrumbActive { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; color: #303030}

/* Left Information */
.LeftSecHead{ font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; padding: 5px; text-align: left; vertical-align: middle; line-height: 100%;
              background-color: #edf0f2; border-bottom:solid 2px #808080;}
.LeftNavTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding-left: 5px; text-align: left; vertical-align: middle}
.RecentItems A { overflow: hidden; width: 125px; text-overflow:ellipsis; }

/* Page Information */
.PageTitle 
{ 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 10pt; 
	font-weight: bold; 
	line-height: 20pt; 
	background-position: center; 
	text-align: left; 
	border-bottom:solid 2px #808080;
}
.PageDes { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: left; vertical-align: top}
/*.PageFooter{  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: center; vertical-align: middle; line-height: 50pt} */
/*.PageBack {} */

/* Forms */
.FormBody {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; vertical-align:middle; background-color: #edf0f2; text-align:left;} 
.FormSecHead {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; padding: 3px; line-height: 10pt; border-bottom:solid 2px black; text-align:left;}
.FormSubSecHead {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold;text-align:left; }
.FormSubSecHeadCenter {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; text-align:center; }
.FormSubSecHeadRed { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; color:#7A0000; }
.FormWarningTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align: middle; padding: 5px;font-weight:bold;}
.FormErrTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align: middle; padding: 5px; color:Red;}
.FormFeedBack { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align: middle; padding: 5px;}
.FormMenu { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; vertical-align:bottom;}
.FormMenuMulti { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt;}
.FormMenuSmall { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; width:45px;}
.FormMenuMed { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; width:80px;}

/******* Need a FormInput class for multiline text Input
/* Need this class to present some of the form which the text should align to left */
.FormInfoTxtNoPadding { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align:bottom;}
.RFPFormInfoTxtNoPadding { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align:top;}
.FormInfoTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align:top;padding:5px; }
.InfoTxt {font-family: Verdana, Arial, Helvetica, sans-serif;font-size:8pt;font-weight:lighter;color:Red;text-align:left;}
.FormInfoTxtCenter { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:center; vertical-align:top;padding:5px; }
.FormInfoTxtRight { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:right; vertical-align:top;padding:5px; }
.RFPFormInfoTxtNoPaddingGrid { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:center; vertical-align:top; }
.RFPFormInfoTxtNoPaddingGridRight { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:right; vertical-align:top; }
.FormLabel { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align:top; padding:5px; width: 150px;}
.FormLabelNoTextAlignWidth { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; vertical-align:top; padding:5px; }
.RFPFormLabel { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: left; vertical-align:top; padding:5px; width: 150px;}
.FormLabelNoPadding { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align:top;  width: 150px;}
.FormLabelNoFixWidth { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align: top;padding:5px;}
.RFPFormLabelNoFixWidth { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: left; vertical-align: top;padding:5px;}
.FormLabelReq { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align: top; padding: 5px; font-weight:bold; color:Maroon; width: 150px;}
.FormLabelReqWithLeftAlign { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: left; vertical-align: top; font-weight:bold; color:Maroon;}
.FormLabelReqNoFixWidth { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; vertical-align: top; padding: 5px; font-weight:bold; color:Maroon;}
.ReadOnlyTxt {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align: top; padding: 5px;}
/* input elements */
.FormInfoTxt textarea { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; }
.FormInfoTxt input { font-family:Verdana, Arial, Helvetica, Sans-Serif;	font-size:8pt; vertical-align:top;}
.FormInput { border:gray 1px solid; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt;  }
.FormInputNoFixWidth { border:gray 1px solid; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding-left: 5px}
.FormCheck {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; }
.FormCheck input {vertical-align:middle;}
.FormCheck label {height:14px; position: relative; vertical-align:middle;}
.FormRadi {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; border:none;}
.FormRadi input {vertical-align:middle;}
.FormRadi label {height:14px; position: relative; vertical-align:middle;}
.FormTaxAmountInput { border:gray 1px solid; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding-left: 5px; width:80px; }
.FormBrowse { border:gray 1px solid; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 6pt; background-color:LightGray; letter-spacing:-0.05em; width:65px }
.FormUpload { border:gray 1px solid; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; background-color:LightGray; height:18px}
.FormCurrencySymbol { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align:top; padding:5px 1px; width: 2px;}
.PreTagWidth { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align:top; padding:0px; width:500px;margin:0px; }
.FormButton
{
	padding: 0px 7px 0px 7px;
	margin: 0px 5px 0px 5px;
	font-weight: normal;
	font-size: 8pt;
	border-color:#edf0f2 #edf0f2 #808080;
	color: #ffffff;
	line-height: 10pt;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	background-color: #737fa9;
	overflow:visible; /* a must for IE */
}

.ButtonPanel 
{	height: 40px; 
	padding-top: 5px ;
	text-align: center;
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8pt; 
	padding: 0px;
	vertical-align: middle; 
	background-color:white;
}

.FormSpacer { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 6pt; line-height: 5pt; background-position: center}
.FormBody Textarea {width:90%; height:60pt;border:solid 1px gray;}

/* Lists */
.ListPanel { position: static; background-color: #dcdcdc; }
.ListHeader		{ font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding: 5px; font-weight: bold;}
.ListHeader td { text-align:left;padding:2px 5px 2px 5px;}
.ListHeader th { text-align:left;padding:2px 5px 2px 5px;}
.ListHeaderBlack { background-color:#edf0f2; color:Black; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding: 5px; font-weight: bold;}
.ListHeader	IMG	{ vertical-align:text-bottom;}
.ListHeader A	{ text-decoration: none; padding: 0px;  }
.ListRow { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding: 3px; background-color:#edf0f2; text-align:left;}
.ListRow td {padding:2px 3px 2px 3px;}

.ListRow TD A,
.ListRow TD A.active,
.ListRow TD A.hover,
.ListRow TD A.visited { color:Black; font-weight:normal;text-decoration:underline; }

.ListRowAlt TD A,
.ListRowAlt TD A.active,
.ListRowAlt TD A.hover,
.ListRowAlt TD A.visited { color:Black; font-weight:normal;text-decoration:underline; }

.ListRowAlt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding: 3px; background-color: #FFFFFF; text-align:left;} 
.ListRowAlt TD {padding:2px 3px 2px 3px;}
.ListRowButton { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 7.5pt; font-weight: bold; padding-left: 5px}
.ListMisc {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 7.5pt; text-align: center; vertical-align: middle ; font-weight: bold}
.ListFooter {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; }
.ListBlock { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding-left: 5px;}
.ListBlockAlt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding-left: 5px;}
.ListNoRecord {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: center; vertical-align: middle ; font-weight: bold; padding:5px; width:100%}

/*GridView */
     .Grid .ListRow td, .Grid .ListRowAlt td
        {
            border:1px solid #dcdcdc; 
            border-collapse:collapse;
            
        }
        
.Grid .GridViewHeader th
        {
            border:1px solid #dcdcdc; 
            border-collapse:collapse;
            text-align:left;
            padding:2px 5px 2px 5px;
        }
                    
.GridViewHeader{ font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; padding: 5px; font-weight: bold; text-align:left;}
.GridViewHeader A{text-decoration: none; padding: 0px; color: #FFFFFF; }
.GridViewHeader A:visited{text-decoration: none; color: #FFFFFF;}   
.GridViewHeader	IMG	{ vertical-align:text-bottom; margin-left:4px;}

/* Report */
.RptDtlList TD {padding:3 3 0 3; }
.RptDtlHeader {color:dimgray; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 7pt;font-weight: bold; }
.RptDtlRow {color:gray; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 7pt; }
.RptDtlFooter {color:dimgray; font-style:normal; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 7pt; }

/* Graphic Devices */
.NavPipe{font-size: 1px; line-height: 1pt; background-color: #FFFFFF}
.LinerThin { font-size: 1px; line-height: 1pt;  background-color: #808080}
.LinerMed {  font-size: 1px; line-height: 1.5pt;background-color: #808080}
.LinerThick { font-size: 1px; line-height: 2pt; background-color: #808080}
.LinerGeneric { font-size: 1px; line-height: 2pt}
.SpacerSmall { font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 2pt; background-position: center}
.SpacerMedium { padding-right: 10px; padding-top: 5px; padding-bottom: 0px}

/* Buttons */
.ButtonSmall { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; line-height: 10pt; font-weight: normal; color: #FFFFFF; width: 60px; border-color: #edf0f2 #edf0f2 #808080}
.ButtonMed
{
	padding: 0px 7px 0px 7px;
	font-weight: normal;
	font-size: 8pt;
	border-color:#edf0f2 #edf0f2 #808080;
	color: #ffffff;
	line-height: 10pt;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	background-color: #737fa9;
}
.ButtonPanel1 {background-color: #FFFFFF}
.QButtonTop
{
	padding: 0px 3px 0px 3px;
	margin: 0px 3px 0px 3px;
	border: 1px solid gray;
	color:  black;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;	
	background-color: white;
}
.DivScroll
{
	position: static;	
	overflow:auto;
	height:140; 
	width:100%; 
	text-align:left; 
	background-color: #ffffff;
}
.DivScrollNoFix
{
	overflow:auto;
	max-height:300px; 
	height:expression(this.scrollHeight>300?300:'auto'); /*IE*/
	width:100%; 
	text-align:left; 
	background-color: #ffffff;
}

/* Defaults */
body  { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt;background-color:White;}

/* Pseudo-classes */
A.Link
A.Visited
A.Hover
A.Active
A.FormHead {}

/* Log Out Text */
.LogOutTxt,
A.LogOutTxt,
A.LogOutTxt:visited,
A.LogOutTxt:link,
A.LogOutTxt:active
{ 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 7.5pt; 
	color:#000000; 
	padding-left: 2px; 
	font-weight: bold; 
	padding-bottom: 2px;
	text-decoration:none;
}
A.LogOutTxt:hover {	text-decoration:underline; }

/* addressbook */
.ListLetter { background-color:#808080; color:black;font-family: Verdana, Arial, Helvetica;  }
.ListLetter TD { background-color:#edf0f2; font-weight:bold; font-size:8pt; line-height:12pt; text-align:center; padding:0 3 3 3;}
.ListLetter TD.Selected { background-color:#808080; color:White;}
.ListLetter A {color:#808080;}
.ListLetter A:visited {color:#364c66;}
.ListLetter A:hover {color:#808080;}

/* Right Text */
.TopRightTxt,
A.TopRightTxt,
A.TopRightTxt:visited,
A.TopRightTxt:link,
A.TopRightTxt:active 
{ 
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 7.5pt; 
	color:#000000; 
	padding-left: 2px; 
	padding-bottom: 2px;
	text-decoration:none;
}
.TopRightTxt :hover,A.TopRighttxt:hover
{
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	color: #000000; 
	font-size: 7.5pt; 
	text-decoration: underline; 
	padding-left: 2px; 
	padding-bottom: 2px
}
A.NavProd {}
A.LeftRecentTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-decoration: none; padding-left: 5px; color:black}
A.ListIndex {}
A.ListRowButton {}
A.ListMisc {}

A.FormSecHead:visited{font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; color: #FFFFFF; text-decoration: none; line-height: 15pt; padding-left: 15px;border:none;}
A.FormSecHead:link{font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; color: #FFFFFF; text-decoration: none; line-height: 15pt; padding-left: 15px; border:none;}
A.FormSecHead:hover{font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; color: #FFFFFF; text-decoration: underline; line-height: 15pt; padding-left: 15px;border:none; }
A.FormSecHead:active{font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; color: #FFFFFF; text-decoration: none; line-height: 15pt; padding-left: 15px;border:none; }
A.PageDes:visited{ font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 8pt; text-decoration: none; padding: 5px 10px 5px 0px; background-position: center; text-align: left; vertical-align: top; }
A.PageDes:link{ font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 8pt; text-decoration: none; padding: 5px 10px 5px 0px; background-position: center; text-align: left; vertical-align: top; }
A.PageDes:hover{ font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 8pt; text-decoration: underline; font-weight: normal; padding: 5px 10px 5px 0px; background-position: center; text-align: left; vertical-align: top; }
A.PageDes:active{ font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 8pt; text-decoration: none; padding: 5px 10px 5px 0px; background-position: center; text-align: left; vertical-align: top; }

A.SiteNavLink { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; text-decoration: none; color: #FFFFFF; }
A.SiteNavLink:hover { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold; text-decoration: none; color: #FFFFFF; }

.ListControl { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align: middle}
.ListControl TD {text-align:left}
.ListControlWrap { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align: right; vertical-align: middle;}
.ListControlWrap TD {text-align:left; width:210px; padding:0px 0px 0px 20px;}
A.ListHeader {color:White;text-decoration:none;}
A.LeftNavTxt {  font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;font-size: 8pt; padding-left: 5px; text-align: left; vertical-align: middle; text-decoration: none;}
A.LeftNavTxt:hover {  font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 8pt; padding-left: 5px; text-align: left; vertical-align: middle;text-decoration: underline;}
A.LeftNavQuick {  font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;font-size: 8pt; text-align: left; vertical-align: middle; text-decoration: none;border:solid 2px white; }
A.LeftNavQuick:hover {  font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 8pt; text-align: left; vertical-align: middle;text-decoration: underline;border: outset 2px #dcdcdc}

.FormErrTxt UL LI { padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px; list-style-type: square; color:DimGray; }
SELECT { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt;border:solid 1px black; }

/* Internal Notes.*/
.InternalNote
{
	position:absolute;
    text-align:left;
    border:1px solid #666;
    background-color:white;
    padding:3px;
    max-width:250px;
    font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8pt; 
	margin-left:3px;
}
.InternalNote .prefix {	font-weight:bold; padding-right:5px; }
.InternalNote .suffix { }

.FormNote
{
	font-family: Verdana, Arial, Helvetica, sans-serif; 
	font-size: 8pt; 
	text-align:left; 
	vertical-align:top;
	padding:5px;
}
.FormNote .prefix {	font-weight:bold; padding-right:5px; }
.FormNote .suffix { }

.RfpImage {	padding: 10px 10px; }
.RfpImage img {	max-width:600; width:expression(this.width>600?600:true); }
.graphic-img img { max-width:660; width:expression(this.width>660?660:true); }
.AJAXProcessingLabel { font-family: Verdana, Arial, Helvetica, sans-serif; font-size:x-small; color:#303030; font-weight:bold }

.FormGridHeaderTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:center; vertical-align:middle; }
.FormGridNumberTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:right; vertical-align:middle; }
.FormGridTxt { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; text-align:left; vertical-align:middle; padding-left:5px }

.EvtProcessingContainer { text-align:center; padding-top:30px; }
.EvtProcessing { width:450px; }
.EvtProcessing .top { background-image:url(/g/images/procbox-top.gif); background-repeat:no-repeat;	height:30px; }
.EvtProcessing .middle { background-image:url(/g/images/procbox-middle.gif); background-repeat:repeat-y; padding-bottom:20px; }
.EvtProcessing .bottom { background-image:url(/g/images/procbox-bottom.gif);background-repeat:no-repeat; }
.EvtProcessing .text-header
{
	color:#15567C;
	font-family:"Trebuchet MS",Arial,Helvetica,sans-serif;
	font-size:20px;
	font-size-adjust:none;
	font-stretch:normal;
	font-style:normal;
	font-variant:normal;
	font-weight:bold;
	line-height:normal;
}

/*New 4th level nav css */
/*.indent {
border-bottom: 1px solid black;
border-right: 1px solid black;
border-left: 1px solid black;
width:1px;

}*/

.indentmenu
{
font: bold 11px Verdana;
width: 100%; /*leave this value as is in most cases*/
overflow: hidden;
}

.indentmenu ul{
margin: 0;
padding: 0;
float: left;
width: 100%; /*width of menu*/

}

.indentmenu ul li{
display: inline;
}

.indentmenu ul li a{
float: left;
color: white; /*text color*/
padding: 4px 11px;
text-decoration: none;
}

.indentmenu ul li a:visited{
color: white;
}

.indentmenu ul li .current {
color: #1a4e6d !important; /*text color of selected and active item*/
padding-top: 3px; /*shift text down 1px for selected and active item*/
padding-bottom: 4px; /*shift text down 1px for selected and active item*/
background: #ecf0f3;
border-bottom:  1px solid #ecf0f3;
}
.indentmenu ul li .current:hover {
padding-top: 3px; /*shift text down 1px for selected and active item*/
padding-bottom: 4px; /*shift text down 1px for selected and active item*/
background: #ecf0f3;
border-bottom:  1px solid #ecf0f3;
}

.indentmenu ul li .off {
color: #cccccc !important; /*text color of selected and active item*/
padding-top: 4px; /*shift text down 1px for selected and active item*/
padding-bottom: 4px; /*shift text down 1px for selected and active item*/
background: #b96064;
border-right: 1px solid #901e24; /*divider between menu items*/
border-bottom: 1px solid #901e24; /*divider between menu items*/
}

.indentmenu ul li .off:hover{
color: #cccccc !important; /*text color of selected and active item*/
padding-top: 3px; /*shift text down 1px for selected and active item*/
padding-bottom: 4px; /*shift text down 1px for selected and active item*/
background: #b96064;
border-right: 1px solid #901e24; /*divider between menu items*/
border-bottom: 1px solid #901e24; /*divider between menu items*/

}
.indentmenu ul li a:hover {
color: #ffffff !important; /*text color of selected and active item*/
padding-top: 3px; /*shift text down 1px for selected and active item*/
padding-bottom: 4px; /*shift text down 1px for selected and active item*/
}
/*end 4th level css */

.picklistdropdown
{
	background: url(/g/images/buttons/set21/button_middle.gif") repeat-x;
	border: solid 1px black;
}

.dynamicDiv 
{   width : 500px;
    height : 230px;
    border : solid 1px #e1e1e1;
    background-color : #FFFFFF;
    font-size : 11px;
    font-family : verdana;
    color : #000;
    padding : 5px;
    position: absolute;
    top: 25%;
    left: 40%;
    margin-left: -70px;
    z-index: 101;

}

.transparentDiv 
{
	filter:alpha(opacity=50);               /*this is for IE*/
	width:110%;
	height:100%;
	opacity:0.5;                            /*this is for firefox*/
	-moz-opacity: .55;
	background-color:#EEE;
	position:absolute; 
	top:0px;
	left:0px;
	z-index: 100;
 }



/*For Cvent Pick List Control */
.CventPickListDiv  
{
	border: 1px solid #666666;	
	white-space: nowrap;	
	height:15px;
}
 .CventPickListDiv .FormInput
{	 	
 	border: none;
 	vertical-align:top;
}

.CventPickListImage
{
	padding:none; margin:none;
		
	
}

.PreviewDiv
{
	overflow:auto;  
    overfow-y:hidden;
}
TD.ActionColumn
{
    white-space:nowrap;
}
TD.ActionColumn A
{
    text-decoration:none;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divObjectInfo" class="ListPanel" style="position:absolute;border:solid 1px gray;   
		visibility:visible;top:89px;left:10px;width:270px;
		filter:blendTrans(duration=1)progid:DXImageTransform.Microsoft.BasicImage(opacity=1.0);">
									
        <table cellspacing=1 width='100%'><tr class='ListRow' ><td align='right' style='width:50%' >Code:</td><td>6LN7QD7SGF2</td></tr><tr class='ListRow' ><td align='right' style='width:50%' >Registration&nbsp;Status:</td><td>Active</td></tr><tr class='ListRow' ><td align='right' style='width:50%' >Start&nbsp;Date:</td><td>8/29/2011</td></tr><tr class='ListRow' ><td align='right' style='width:50%' >Internal&nbsp;Note:</td><td><span class="text"><pre class='FormInfoTxt' style='padding:0,0,0,0;width:{0};word-wrap:break-word;overflow:hidden;white-space:-moz-pre-wrap;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-left:0px;'></pre></span><span class="suffix"></span></td></tr><tr class='ListRow' ><td align='right' style='width:50%' >Planning&nbsp;Status:</td><td></td></tr></table>    
    </div>
    </form>
</body>
</html>
