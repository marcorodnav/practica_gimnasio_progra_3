using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GimnasioUpi
{
    public partial class MasterGym : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_catalogo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("./Clientes.aspx");
        }

        protected void btn_salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("./Default.aspx");
        }
    }
}