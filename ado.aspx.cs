using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication14
{
    public partial class ado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Define a SQL query
                    string query = "SELECT * FROM Customers";

                    // Create a Command object
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the Command and retrieve data using DataReader
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            // Load data into a DataTable
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            // Bind the DataTable to a GridView for display
                            GridView1.DataSource = dataTable;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }
}


        