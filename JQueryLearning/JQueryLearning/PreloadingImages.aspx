<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreloadingImages.aspx.cs" Inherits="JQueryLearning.PreloadingImages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Preloading images using the width and height CSS properties</title>
    <style type="text/css">
        body {
            padding: 0;
            margin: 0;
            background: #000080;
            font: 1em Arial, Helvetica, sans-serif;
            color: #000;
        }
        
/* image preloaders */
#preloader1 {
    background: url("1.jpg") no-repeat;
    width: 0;
    height: 0;
}

#preloader2 {
    background: url("2.jpg") no-repeat;
    width: 0;
    height: 0;
}

#preloader3 {
    background: url("3.jpg") no-repeat;
    width: 0;
    height: 0;
}

#preloader4 {
    background: url("4.jpg") no-repeat;
    width: 0;
    height: 0;
}

#preloader5 {
    background: url("5.jpg") no-repeat;
    width: 0;
    height: 0;
} 

        /* main containers */

        #wrapper {
            width: 960px;
            margin: 0 auto;
            background: #eee;
        }

        #header, #content, #footer {
            padding: 30px;
        }

        /* sample images */
        img {
            padding: 10px;
            background: #fff;
            border: 1px solid #ddd;
        }
        </style> 
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">

    <div id="header">

        <h1>Preloading images with CSS</h1>

          <h2>Header section</h2>

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse auctor commodo risus, et ultrices sapien vestibulum non. Maecenas scelerisque quam a nulla mattis tincidunt. Etiam massa libero, pharetra vel laoreet et, ultrices non leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        
          <!-- image preloaders -->
        <div id="preloader1"></div>
        <div id="preloader2"></div>
        <div id="preloader3"></div>
        <div id="preloader4"></div>
        <div id="preloader5"></div> 

      </div>

    <div id="content">

        <h2>Main content section</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse auctor commodo risus, et ultrices sapien vestibulum non. Maecenas scelerisque quam a nulla mattis tincidunt. Etiam massa libero, pharetra vel laoreet et, ultrices non leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

        <p><img src="1.jpg" width="160" height="120" alt="Sample Image 1" /></p>
        <p><img src="2.jpg" width="160" height="120" alt="Sample Image 2" /></p>
        <p><img src="3.jpg" width="160" height="120" alt="Sample Image 3" /></p>
        <p><img src="4.jpg" width="160" height="120" alt="Sample Image 4" /></p>
        <p><img src="5.jpg" width="160" height="120" alt="Sample Image 5" /></p>
    </div>

    <div id="footer">

        <h2>Footer section</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse auctor commodo risus, et ultrices sapien vestibulum non. Maecenas scelerisque quam a nulla mattis tincidunt. Etiam massa libero, pharetra vel laoreet et, ultrices non leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>

</div> 
    </form>
</body>
</html>
