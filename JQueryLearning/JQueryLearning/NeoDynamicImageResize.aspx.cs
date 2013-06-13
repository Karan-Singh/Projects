using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class NeoDynamicImageResize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Create an ImageElement to wrap up the uploaded image
            Neodynamic.WebControls.ImageDraw.ImageElement uploadedImage;
            uploadedImage = Neodynamic.WebControls.ImageDraw.ImageElement.FromBinary(this.FileUpload1.FileBytes);

            //Create Resize imaging action to apply on the uploaded image
            //NOTE: You may apply any of the ImageDraw built-in imaging actions
            Neodynamic.WebControls.ImageDraw.Resize actResize = new Neodynamic.WebControls.ImageDraw.Resize();
            actResize.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            actResize.Height = 400;
            //actResize.Width = 800;
            actResize.LockAspectRatio = Neodynamic.WebControls.ImageDraw.LockAspectRatio.HeightBased;

            uploadedImage.Actions.Add(actResize);

            //Composite the output image by using ImageDraw class
            Neodynamic.WebControls.ImageDraw.ImageDraw imgDraw = new Neodynamic.WebControls.ImageDraw.ImageDraw();

            //Add uploaded image
            imgDraw.Elements.Add(uploadedImage);

            //Output image settings...
            //For example: save the image in JPEG format always
            imgDraw.ImageFormat = Neodynamic.WebControls.ImageDraw.ImageDrawFormat.Jpeg;            
            imgDraw.JpegCompressionLevel = 90;
            
            //Now, save the output image on disk
            //string fileName = @"C:\" + System.IO.Path.GetFileNameWithoutExtension(this.FileUpload1.FileName) + "__resized.jpg";
            string fileName = Server.MapPath("resizeImages") + "\\" + System.IO.Path.GetFileNameWithoutExtension(this.FileUpload1.FileName) + "__resized.jpg";
            
            imgDraw.Save(fileName);

            img1.ImageUrl = fileName;
        }
    }
}
