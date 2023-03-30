using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DALayer
{
    public class DAL
    {
       
        public bool InsertUserRegistrationDetails(string Eid, string Ename, string Email, string Password,string Gender, string dob,string con)
        {
            bool result = false;

            SqlConnection conn = new SqlConnection(con);

            try
            {

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd1 = new SqlCommand("emp_sp", conn);

                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.Add("@Eid", SqlDbType.VarChar).Value = Eid;
                cmd1.Parameters.Add("@Ename", SqlDbType.VarChar).Value = Ename;
                cmd1.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
                cmd1.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password;
                cmd1.Parameters.Add("@Gender", SqlDbType.VarChar).Value =Gender;
                cmd1.Parameters.Add("@dob", SqlDbType.VarChar).Value = dob;
                int rows = cmd1.ExecuteNonQuery();
                if (rows > 0)
                {
                    result = true;

                }
                else
                {
                    result = false;


                }
                return result;
            }
            catch (Exception ex)
            {

                throw ex;

            }
            finally
            {
                conn.Close();

            }
          
        }

        public DataSet Gridview1()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString.Trim());
            SqlDataAdapter da = new SqlDataAdapter("get_details", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "form1");
            return ds;
        }
    }
  
}

