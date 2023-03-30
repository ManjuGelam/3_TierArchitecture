
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALayer;
using System.Configuration;
using System.Data;

namespace _3_TierArchitecture
{

    public partial class Registration : System.Web.UI.Page
    {
        BAL OBJDAL = new BAL();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
              string  con = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
                bool InsertResult = false;
                string message = string.Empty;
                BAL objinsert = new BAL();
                InsertResult = objinsert.InsertUserRegistrationDetails(txtId.Text, txtEname.Text, txtEmail.Text,txtPwd.Text, rbtnMale.Checked, rbtnFemale.Checked, dob.Text, con);
                if (InsertResult)
                    message = "Record Inserted Successfully";
                  
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
            catch (Exception ex)
            {
                throw (ex);
            }


        }

      
    }
}
