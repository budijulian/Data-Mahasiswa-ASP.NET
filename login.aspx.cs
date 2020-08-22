using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace uas
{
    public partial class login : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection();
        private SqlCommand cmd = new SqlCommand();
        private DataSet ds = new DataSet();
        private string servername = "Data Source=ADMIN-PC;Initial Catalog=DB_MAHASISWA;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = servername;
            con.Open();
        }

        protected void masuk_Click(object sender, EventArgs e)
        {
            cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tbl_admin2 WHERE USERNAME = '" + txtuser.Text.ToString() + "' AND PASS = '" + txtpass.Text.ToString() + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["USERNAME"] = dr["USERNAME"].ToString();
                Session["NAMA"] = dr["NAMA"].ToString();
                Session["NPM"] = dr["NPM"].ToString();
                Session["JURUSAN"] = dr["JURUSAN"].ToString();
                Response.Redirect("DataMahasiswa.aspx");
            }
            con.Close();
            notif.Text = "USER atau Password Anda Salah";
        }



    }
}