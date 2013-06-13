using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JQueryLearning
{
    public class ModuleClassDemo : IHttpModule		
    {
        DateTime beginRequest;

        public void Init(HttpApplication app)
        {
            app.BeginRequest += new EventHandler(this.OnBeginRequest);
            app.EndRequest += new EventHandler(this.OnEndRequest);
            app.UpdateRequestCache += new EventHandler(this.app_UpdateRequestCache);            
        }

        void app_UpdateRequestCache(object o, EventArgs e)
        {
            HttpApplication app = (HttpApplication)o;
            HttpContext ctx = app.Context;

            ctx.Response.Write("Coming from UpdateRequestCache handler");
        }        

        public void Dispose() { }

        public void OnBeginRequest(object o, EventArgs e)
        {
            beginRequest = DateTime.Now;
        }

        public void OnEndRequest(object o, EventArgs e)
        {
            TimeSpan elapsedTime = DateTime.Now - beginRequest;

            HttpApplication app = (HttpApplication)o;
            HttpContext ctx = app.Context;

            ctx.Response.Write("Coming from Test Module - Elapsed Time -" + elapsedTime.ToString());
        }
    }
}
