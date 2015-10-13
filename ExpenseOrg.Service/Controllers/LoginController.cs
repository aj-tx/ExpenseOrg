using ExpenseOrg.Service.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenseOrg.Service.Controllers
{
    public class LoginController : ApiController
    {

        private string connStr {
            get {

                return 
                    ConfigurationManager.ConnectionStrings["taskorganizerdb-cloud"].ConnectionString;
               
            }

        }

        [HttpGet]
        public string Get()
        {
            //taskorganizerdb-cloud

            //check connection to db
           
            MySql.Data.MySqlClient.MySqlConnection connection = new MySql.Data.MySqlClient.MySqlConnection(connStr);
            try
            {
                connection.Open();

                return "Connection is OK to db";
            }
            catch (Exception ex)
            {
                return "Could not connect to db  ++++  " + ex.Message;
            }
            finally
            {
                connection.Close();
            }
      }

            [HttpPost]

        public string PostLoginUser(User user)
        {
            //check if its Login or new user.

            if (string.IsNullOrEmpty(user.lastname))
            {
                if (!string.IsNullOrEmpty(user.email) && !string.IsNullOrEmpty(user.password))

                {
                    using (var conn = new MySqlConnection(connStr))
                    {
                        var cmd = conn.CreateCommand();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = "prcLogin";
                        var allParams = new MySqlParameterCollection();
                        allParams.Add(new MySqlParameter("suppliedEmail", user.email.Trim()));
                        cmd.Parameters = allParams;

                    }

                }
            }



        }


        }
    }
}
