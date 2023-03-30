using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DALayer;

namespace BALayer
{
    public class BAL
    {





        DAL objdal = new DAL();
            public bool InsertUserRegistrationDetails(string Eid, string Ename, string Email,string Password, bool MaleChecked,bool FemaleChecked, string dob,string con)
            {
            string Gender = string.Empty;
            if (MaleChecked)
            {
                Gender = "Male";

            }
            else
            {
                Gender = "Female";

            }

                return objdal.InsertUserRegistrationDetails(Eid, Ename, Email,Password,Gender, dob,con);

            }
       
        public DataSet Getdetails()
        {
            DataSet ds = objdal.Gridview1();
            return ds;

        }
    }


    }


