using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GimnasioUpi
{
    public partial class Rutinas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregarRutina_Click(object sender, EventArgs e)
        {
            rutinasDataSource.Insert();
        }

        protected void BtnModificarRutina_Click(object sender, EventArgs e)
        {
            rutinasDataSource.Update();
        }

        protected void BtnBorrarRutina_Click(object sender, EventArgs e)
        {
            rutinasDataSource.Delete();
        }
    }
}