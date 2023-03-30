using BALayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_TierArchitecture
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BAL OBJDAL = new BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Getdetails1();
            }
        }
        public void Getdetails1()
        {
            DataSet ds = OBJDAL.Getdetails();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}