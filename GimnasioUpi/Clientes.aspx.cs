﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GimnasioUpi
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgrearCliente_Click(object sender, EventArgs e)
        {
            gimnasioDataSource.Insert();
        }

        protected void BtnBorrarCliente_Click(object sender, EventArgs e)
        {
            gimnasioDataSource.Delete();
        }

        protected void BtnModificarCliente_Click(object sender, EventArgs e)
        {
            gimnasioDataSource.Update();
        }
    }
}