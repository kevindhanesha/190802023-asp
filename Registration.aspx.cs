using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
            //DeleteCommand="DELETE FROM [user_data] WHERE [id] = @id" 
            //InsertCommand="INSERT INTO [user_data] ([fullname], [email], [password]) VALUES (@fullname, @email, @password)" 
            //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
            //SelectCommand="SELECT [id], [fullname], [email], [password] FROM [user_data]" 
            //UpdateCommand="UPDATE [user_data] SET [fullname] = @fullname, [email] = @email, [password] = @password WHERE [id] = @id">
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [user_data] ([fullname], [email], [password]) VALUES (@fullname, @email, @password)", con);
                cmd.Parameters.AddWithValue("@fullname",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@password",TextBox3.Text.Trim());
                con.Open();
                int s = (int)cmd.ExecuteNonQuery();
                if (s == 1)
                {
                    Session["email"] = TextBox1.Text;
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                
                    Response.Redirect("~/Login.aspx");
               }
               else
               {                
                    Literal1.Text = "Please Fill details.";
               }
                con.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert(Error Message = '" + ex.Message + "')</script>");
            }
        
        }
 }