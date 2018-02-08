using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GimnasioUpi
{
    public partial class MasterCatalogo : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Default.aspx");
        }

        protected void btn_rutinas_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("./Rutinas.aspx");
        }

        protected void btn_clientes_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("./Clientes.aspx");
        }
    }
}