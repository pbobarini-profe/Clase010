using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase010
{
    public partial class Prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["TiempoTranscurrido"] = 0;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1500);
            Label2.Text = "Modificado por AJAX";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Modificado sin AJAX";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            Session["TiempoTranscurrido"] = ((int)Session["TiempoTranscurrido"] + Timer1.Interval);
            Label2.Text = $"{DateTime.Now}";
            if ((int)Session["TiempoTranscurrido"] >= 4000)
            {
                Timer1.Enabled = false;
            }

        }
    }
}