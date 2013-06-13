<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IE_Select_Focus.aspx.cs"
    Inherits="JQueryLearning.IE_Select_Focus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.2.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        $(function () {
            $('#dx').on("click", function () {
                $('#picklist').toggle(true);
                $('#picklist').focus()
            });
            //$('#picklist').focus();
        });
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <br /><br />
    <div id="dx" style="width:300px; height:20px; border:1px solid gray;">
        <select style='width: 300px; display:none;' size='7' id='picklist'>
            <option selected="selected" value="00000000-0000-0000-0000-000000000000"></option>
            <optgroup label="-- Contact Fields --">
            </optgroup>
            <option value="28fde7b3-96a4-4871-ba62-c82ab14352ce~1~string">CC Email Address</option>
            <option value="103331c0-4d69-44fd-a7f9-b82018ebaf9c~1~string">Company</option>
            <option value="160bde76-99ac-4949-af43-11c7513cf059~1~string1">Confirmed Opted-In</option>
            <option value="cbf5bff0-0681-4e9a-ae64-57a0c6e9bb30~1~string1">Contact Type</option>
            <option value="339dfcfc-539b-4f89-810d-9c428f2eb055~1~datetime3">Date of Birth</option>
            <option value="c95314b1-9cd6-46f2-a8c1-d8169af02a4b~1~string">Designation</option>
            <option value="4117b73c-9bf7-48a1-b075-a6c20f947982~1~string">Email Address</option>
            <option value="f889ad11-9fcc-45c9-ae19-0fbdf89705fb~1~string">Email Address Domain</option>
            <option value="8cdff794-911b-4ace-b892-e877b62785e0~1~string">First Name</option>
            <option value="9654ac71-729b-4e14-baf6-cf9408c3d330~1~string7">Gender</option>
            <option value="a344c0da-a87d-4d13-92c6-8a2fd256abd4~1~string">Home Address 1</option>
            <option value="2ee62b77-e113-4256-a7f1-7464583c33b9~1~string">Home Address 2</option>
            <option value="feaaf9f4-4563-4ab5-8b6a-3b8080b4e1a8~1~string">Home Address 3</option>
            <option value="72d88f73-3746-45c4-aa21-bf07f4ccf3f2~1~string">Home City</option>
            <option value="3d952678-c1ce-4218-86fd-9a9910505de2~1~string">Home Country</option>
            <option value="d8604059-d1e4-4b9c-92d3-972318df1537~1~string">Home Country Code</option>
            <option value="76a4b150-5cc6-4dd8-841b-b772406ec071~1~string">Home Fax</option>
            <option value="70ca48f1-dc01-4838-b395-3dc5c13e64cc~1~string">Home Phone</option>
            <option value="deb2b6da-58dc-48fa-ba4c-79556d3ccf93~1~string">Home State</option>
            <option value="ffe16496-9a90-4fc2-93ed-04fac0ca8f74~1~string">Home State Code</option>
            <option value="e4cd6afa-f3b0-4a8e-8ba2-5dd25b625359~1~string">Home ZIP/Postal Code</option>
            <option value="c8410368-58fc-4921-ae73-b172bc7d420d~1~string">Last Name</option>
            <option value="026ecf53-24c9-4935-b40f-53fd9c131e07~1~decimal1">Membership Amount Due</option>
            <option value="4be0650b-0de4-4eb6-af54-3b8c3f91ef2c~1~datetime">Membership Expiration
                Date</option>
            <option value="60cf45f9-3462-4c5f-a1c9-ab23f313c105~1~string1">Membership Item</option>
            <option value="a51553fb-740a-42ae-a9db-685827cab0c7~1~datetime">Membership Join Date</option>
            <option value="f7f4e6a8-7283-492b-ac2f-78ffa6186b88~1~datetime">Membership Last Renewal
                Date</option>
            <option value="0ded4c31-19a6-40a4-8c21-93188716adbe~1~string1">Membership Type</option>
            <option value="68c5d355-8e05-46a7-b105-fcf06ae74403~1~string">Middle Name</option>
            <option value="a5c75ed9-82af-4d70-a1e9-ef0730e898b7~1~string">Mobile Phone</option>
            <option value="338e79ee-87e6-49d0-aa1a-87f487e552a1~1~string6">National Identification
                Number</option>
            <option value="224c5317-00dd-478b-b456-3f861ce6c184~1~string1">Opted-Out</option>
            <option value="b745c7df-69ef-44be-9326-93f6c527e018~1~string">Pager Number</option>
            <option value="12579661-c012-4664-96b6-26293399c433~1~string">Passport Country</option>
            <option value="40a526a2-3229-4c0a-a856-d89a811cd21c~1~string6">Passport Number</option>
            <option value="471a07f7-7b5a-43a8-bbd6-eabf50841711~1~string">Primary Address 1</option>
            <option value="041782f9-1986-4d3f-a998-516a92505564~1~string">Primary Address 2</option>
            <option value="2c3c82ca-705f-430a-860d-e450e324b437~1~string">Primary Address 3</option>
            <option value="e778e7b8-cd7c-4995-9786-40088d0678eb~1~string">Primary Address Indicator</option>
            <option value="46151d06-850d-4314-a185-1117529243d0~1~string">Primary City</option>
            <option value="f7d83b83-b301-4115-b958-8cb03a506751~1~string">Primary Country</option>
            <option value="2efe96d5-5fe4-4ca8-89d5-6289a0cf1e1c~1~string">Primary Country Code</option>
            <option value="0bdfbe8a-efb1-4c07-b520-ae24a3c19027~1~string">Primary State</option>
            <option value="89333907-2b1e-408e-a1b9-eb9e910cb328~1~string">Primary State Code</option>
            <option value="baa23e3c-36a2-444d-bd9b-a81af04c0d9c~1~string">Primary ZIP/Postal Code</option>
            <option value="934d0280-3285-46a8-9536-176a959be747~1~string6">Social Security Number</option>
            <option value="95edf8eb-1c1e-40bf-8ccc-e861880ab668~1~string">Source ID</option>
            <option value="534b2a13-8278-443f-aa1d-178993afcf13~1~string">Title</option>
            <option value="bb4ed518-fd05-4a3c-90ae-76be7cc4a5f3~1~string">Work Address 1</option>
            <option value="bd52da8c-d848-48da-9200-89e1060daa30~1~string">Work Address 2</option>
            <option value="2729d4d9-84f7-42e4-8c20-0346c7395011~1~string">Work Address 3</option>
            <option value="1268ef06-5d84-4937-b61b-ccf03e0669d9~1~string">Work City</option>
            <option value="7604ab0a-1445-456b-8947-f419a56ec996~1~string">Work Country</option>
            <option value="dbf33aac-9679-44ef-94e7-a8800a4d79f5~1~string">Work Country Code</option>
            <option value="ed40f67c-713a-428c-a49c-055b12682f09~1~string">Work Fax</option>
            <option value="63d2cd52-e27e-4aa3-a664-5772656a9c96~1~string">Work Phone</option>
            <option value="bc1bd12d-9185-40af-96e1-a44707ad6777~1~string">Work State</option>
            <option value="43f40ee9-da0a-4f16-a17f-c7eb0cadfd7a~1~string">Work State Code</option>
            <option value="11c368f3-dc62-4f37-be2e-15a2a096967d~1~string">Work ZIP/Postal Code</option>
            <optgroup label="-- Custom Contact Fields --">
            </optgroup>
            <option value="b34af0d5-44fd-4811-bcc5-db77ae2aeb31~6~string1">30 contact custom field</option>
            <option value="5872aa23-d47c-4e10-a263-55ae60222dbc~6~string2">4 conatct custom field</option>
            <option value="3812257e-51d0-448e-9044-081cf5e26dae~6~string1">2 conatct custom field</option>
            <option value="bd1a7023-a791-4215-8f5c-0f7f170e601f~6~string1">Tech Hybrid Shift233</option>
            <option value="b3cb8e56-ce50-4b1b-9879-724467ad1a51~6~string1">SC2</option>
            <option value="9dcc3d7a-9c9c-4f8b-a835-1f7b64f4d335~6~string2">cont_100</option>
            <option value="90a0969d-8417-4edc-b221-ef315301fdac~6~string2">cont_50</option>
            <option value="7d2fdab1-6bff-440d-98dc-089040a7b57b~6~string2">Multi selec t</option>
            <option value="27b11612-2ba7-4d35-926c-82a5efce5ecd~6~string2">custom contact multi
                1</option>
            <option value="66a2e782-85ed-4754-99a3-bfc9b0508da7~6~string2">Cont cust field</option>
            <option value="182f8a27-2531-4c5e-9426-5eee7db44834~6~datetime">issue 48768-123</option>
            <option value="35308526-9c42-44c3-b668-cf0b41ac4d76~6~datetime">Open Ended Text (Day
                first)- Date/Time</option>
            <option value="516bf3ec-23f6-463f-bf38-d33e7ca7ef9b~6~string1">test 1 varun chhabra
                is checking the length please</option>
            <option value="f917b3b6-afa1-4b2a-826c-51d6fc656e53~6~int">Number</option>
            <option value="fbeb7d5d-30d8-415f-9ce5-e0890754b9cc~6~datetime">issue 48768</option>
            <option value="9f247d5f-f3dc-4dd5-bd9e-9e4a75630715~6~string1">Single-Horizontal</option>
            <option value="241d6f0b-5ea5-4e28-bd99-9db44c615a82~6~string1">SC2</option>
            <optgroup label="-- Respondent Fields --">
            </optgroup>
            <option value="f168e431-d1b4-438f-a231-5e074ad18b76~1~string">Invited By</option>
            <option value="f168e431-d1b4-438f-a231-5e074ad18b77~1~datetime">Invited Date</option>
            <option value="f168e431-d1b4-438f-a231-5e074ad18b78~1~string">Last Modified By</option>
            <option value="f168e431-d1b4-438f-a231-5e074ad18b79~1~datetime">Last Modified Date</option>
            <option value="d427201f-b521-456c-a757-ad44167acad9~1~string">Reference ID</option>
            <option value="efab35e3-bd81-4985-8d36-4758ee8e564c~1~string1">Responded Through</option>
            <option value="c3527618-9309-44ab-bd65-7728096f89a9~1~int">Respondent Score</option>
            <optgroup label="-- Survey Question --">
            </optgroup>
            <option value="7595001a-07a1-4010-a080-df0506bf2ede~8~string1~Buying experience">1.
                Please rate the importance of : Buying experience...</option>
            <option value="7595001a-07a1-4010-a080-df0506bf2ede~8~string1~Quality">1. Please rate
                the importance of : Quality...</option>
            <option value="7595001a-07a1-4010-a080-df0506bf2ede~8~string1~User experience">1. Please
                rate the importance of : User experience...</option>
            <option value="fdb98458-0ed6-4e82-8c1b-3e4872ade94f~8~string~Beef">2. ur fav food?:
                Beef</option>
            <option value="fdb98458-0ed6-4e82-8c1b-3e4872ade94f~8~string~Chicken">2. ur fav food?:
                Chicken</option>
            <option value="fdb98458-0ed6-4e82-8c1b-3e4872ade94f~8~string~Fish">2. ur fav food?:
                Fish</option>
            <option value="fdb98458-0ed6-4e82-8c1b-3e4872ade94f~8~string~Pork&amp;Bacon">2. ur fav
                food?: Pork&amp;Bacon</option>
            <option value="fdb98458-0ed6-4e82-8c1b-3e4872ade94f~8~string~tuna&#39;s">2. ur fav food?:
                tuna&#39;s</option>
            <option value="7e11db61-c0a4-4a2f-9303-f7e717a3bce5~8~string">3. What percentage of
                products do you buy online?</option>
            <option value="5b7312d9-53f3-40cc-b8ec-a699bb4e9850~8~string2">4. Reasons for purchase</option>
            <option value="5b7312d9-53f3-40cc-b8ec-a699bb4e9850~8~string5">4. Reasons for purchase:
                Other</option>
            <option value="c510d124-0a2f-40c2-b8ea-096660eac111~8~string1">5. How would you rate
                the overall value of the product? (Scale: 1- very low value ...</option>
            <option value="7a91fb8b-5d53-45e5-a774-ccfc403982cf~8~string1">6. Based on your recent
                purchase, how satisfied are you?</option>
            <option value="c8eeba0e-9443-424b-a1a6-4dfc79aab449~8~string1">7. Would you purchase
                products from us again?</option>
        </select>
    </div>
    </form>
</body>
</html>
