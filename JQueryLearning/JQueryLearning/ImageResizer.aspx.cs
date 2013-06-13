using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using fbs.ImageResizer;

namespace JQueryLearning
{
    public partial class ImageResizer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //BasePageUserInfoText.Text = "test&amp;prod";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        //Dim uploadFolder As String = System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath + "\uploads\" '"C:\images\"
        //Dim settings As String = "?maxwidth=1920&maxheight=1200"

        //If (Not fUpload.PostedFile Is Nothing) Then
        //    Dim newName As String = System.Guid.NewGuid().ToString() + System.IO.Path.GetExtension(fUpload.PostedFile.FileName)
        //    Dim newPath As String = uploadFolder + newName

        //    fbs.ImageResizer.ImageManager.getBestInstance().BuildImage(fUpload.PostedFile, newPath, New fbs.yrl(settings).QueryString)
        //End If

        string filePath = Server.MapPath("resizeImages") + "\\";
        //string filePath = System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath + "resizeImages\\";
        string newName = System.Guid.NewGuid().ToString() + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        filePath = filePath + newName;
        string settings = "?maxwidth=400&maxheight=200";

        ImageManager.getBestInstance().BuildImage(FileUpload1.PostedFile, newName, new fbs.yrl(settings).QueryString);

        //FileUpload1.SaveAs(filePath);
        }
    }
}
