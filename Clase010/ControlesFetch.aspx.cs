using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization; 

namespace Clase010
{
    public partial class ControlesAjax : System.Web.UI.Page
    {
        [System.Web.Services.WebMethod]
        public static string GetHora()
        {
            return DateTime.Now.ToString("HH:mm:ss");
        }
        [System.Web.Services.WebMethod]
        
        public static string GetProductos()
        {
            List<string> productos = HttpContext.Current.Session["productos"] as List<string>;
            var serializer = new JavaScriptSerializer();
            return serializer.Serialize(productos);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> productos = new List<string>
            {
                "pan",
                "huevos",
                "dulce"
            };
            Session["productos"] = productos;
        }
    }
}