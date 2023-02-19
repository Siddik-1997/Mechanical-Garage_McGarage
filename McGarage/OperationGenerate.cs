using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace McGarage
{
    public class OperationGenerate
    {

        String connection = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public DataTable GetDataTable(string query)
        {
            SqlConnection conn = new SqlConnection(connection);

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;

        }
        public int insert(string query)
        {
            SqlConnection conn = new SqlConnection(connection);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand(query, conn);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch (SqlException ex)
            {
                return 0;
            }

        }
    }
}